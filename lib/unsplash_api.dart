library unsplash_api;

import 'dart:async';
import 'dart:convert' show json, utf8;
import 'dart:math';

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'package:http/http.dart' as http;
import 'package:unsplash_api/lib/stream.dart';

import 'lib/link_header.dart';

part 'unsplash_api.g.dart';

part 'deserialization/abstract.dart';
part 'deserialization/basic.dart';
part 'controllers/abstract.dart';

part 'entities/enums.dart';
part 'entities/search_photos_query.dart';
part 'entities/page.dart';
part 'entities/portfolio.dart';
part 'entities/user_statistics.dart';
part 'entities/user_statistics_query.dart';
part 'entities/statistics.dart';
part 'entities/user_photos_query.dart';
part 'entities/user_collections_query.dart';
part 'entities/user_liked_photos_query.dart';
part 'entities/photo_statistics_query.dart';
part 'entities/random_photo_query.dart';
part 'entities/photos_query.dart';
part 'entities/badge.dart';
part 'entities/update_photo.dart';
part 'entities/exif.dart';
part 'entities/location.dart';
part 'entities/update_user.dart';
part 'entities/profile_image.dart';
part 'entities/social.dart';
part 'entities/user.dart';
part 'entities/stat_value.dart';
part 'entities/historical.dart';
part 'entities/user_links.dart';
part 'entities/photo_links.dart';
part 'entities/photo_urls.dart';
part 'entities/photo.dart';
part 'entities/user_access_token.dart';
part 'entities/tracked_download_photo.dart';

part 'controllers/photos.dart';
part 'controllers/me.dart';
part 'controllers/users.dart';
part 'controllers/search.dart';
part 'controllers/collections.dart';
part 'controllers/topics.dart';
part 'controllers/stats.dart';
part 'controllers/oauth.dart';

part 'http/abstract.dart';
part 'http/basic_client.dart';

/// Unsplash API base URL.
final Uri unsplashApiBase = Uri.parse('https://api.unsplash.com/');
final Uri oauthBase = Uri.parse('https://unsplash.com/');
final Uri oobRedirectUri = Uri.parse('urn:ietf:wg:oauth:2.0:oob');

/// Error handler type
typedef ErrorListener = void Function(ApiError);

/// The unsplash api.
class UnsplashApi {
  UnsplashApiConfig config = UnsplashApiConfig(
    base: unsplashApiBase,
    scopes: OAuthScope.values.toSet(),
    oauthBase: oauthBase,
    isSecretsExplicitlyPresented: false,
    redirectUri: oobRedirectUri,
  );

  /// Current user endpoints
  MeController get me => MeController(config);

  /// User endpoints
  UserController get user => UserController(config);

  /// Stat endpoints
  StatController get stat => StatController(config);

  /// Photos endpoints
  PhotoController get photo => PhotoController(config);

  /// Topic endpoints
  TopicController get topic => TopicController(config);

  /// Search endpoints
  SearchController get search => SearchController(config);

  /// Search endpoints
  OAuthController get oauth => OAuthController(config);

  /// Collection endpoints
  CollectionController get collection => CollectionController(config);

  /// Creates copy of this [UnsplashApi] instance with a [userToken]
  UnsplashApi authenticated(UserAccessToken userToken) {
    return UnsplashApi()
      ..config = config.copyWith(userToken: userToken);
  }
}

HttpClient _createInstantHttpClient() => InstantHttpClient();

class UnsplashApiConfig {
  UnsplashApiConfig({
    required this.base,
    required this.scopes,
    required this.redirectUri,
    this.oauthBase,
    this.isSecretsExplicitlyPresented = false,
    this.userToken,
    this.accessKey,
    this.secretKey,
    this.deserializer = const BasicDeserializer(),
    this.createHttpClient = _createInstantHttpClient,
  });

  Uri? oauthBase;
  String? accessKey;
  String? secretKey;
  UserAccessToken? userToken;

  /// Basic deserializer of all entities with .fromJson method.
  /// Basically you don't need to change it, but if you experience problems
  /// you can change it with your own implementation.
  ///
  /// All types with fromJson methods is moved to the [_fromJsons].
  Deserializer deserializer;

  /// [HttpClient] to make requests.
  /// Be aware of dart:io class with same name.
  /// The [HttpClient] is owned by this package.
  /// By default there is [InstantHttpClient]
  /// which uses [http package](https://pub.dev/packages/http).
  HttpClient Function() createHttpClient;

  final Uri base;
  final Set<OAuthScope> scopes;

  /// Whether an [accessKey] and [secretKey] presented
  /// explicitly (e.g. reverse proxy)
  final bool isSecretsExplicitlyPresented;
  final Uri redirectUri;

  UnsplashApiConfig copyWith({
    Uri? base,
    Uri? oauthBase,
    Uri? redirectUri,

    String? accessKey,
    String? secretKey,
    UserAccessToken? userToken,

    Set<OAuthScope>? scopes,
    bool? isSecretsExplicitlyPresented,
    HttpClient Function()? createHttpClient,
    Deserializer? deserializer,
  }) {
    return UnsplashApiConfig(
      base: base ?? this.base,
      oauthBase: oauthBase ?? this.oauthBase,
      redirectUri: redirectUri ?? this.redirectUri,
      accessKey: accessKey ?? this.accessKey,
      secretKey: secretKey ?? this.secretKey,
      userToken: userToken ?? this.userToken,
      scopes: scopes ?? this.scopes,
      createHttpClient: createHttpClient ?? this.createHttpClient,
      deserializer: deserializer ?? this.deserializer,
      isSecretsExplicitlyPresented:
        isSecretsExplicitlyPresented ?? this.isSecretsExplicitlyPresented,
    );
  }
}

extension on List<Link> {
  Link? _get(String name) {
    return firstWhereOrNull((e) => e.rel?.toLowerCase() == name);
  }

  Link? get firstPage => _get('first');
  Link? get lastPage => _get('last');
  Link? get nextPage => _get('next');
  Link? get prevPage => _get('prev');
}

Map<String, String> splashQueryParameters(Map<String, Object?> json) {
  final query = <String, String>{};

  for (final entry in json.entries) {
    _splitJsonValueIntoQuery(entry.key, entry.value, query);
  }

  return query;
}

void _splitJsonValueIntoQuery(
    String key, Object? value, Map<String, String> o) {
  if (value == null) {
    return;
  }

  switch (value) {
    case int() || bool() || String():
      o[key] = '$value';
      break;
    case Iterable():
      assert(value.every(_isQueryListSupportedValue),
          "query array must fulfilled with one of next types: num, bool, String, null");
      o[key] = value.where((e) => e != null).map((e) => '$e').join(',');
      break;
    case Map():
      for (final entry in value.entries)
        if (entry.value != null)
          _splitJsonValueIntoQuery('$key[${entry.key}]', entry.value, o);
  }
}

bool _isQueryListSupportedValue(Object? v) =>
    v is String || v == null || v is bool || v is num;

/// Base error.
sealed class ApiError implements Exception {}

/// Mixin to mix with class error based on bad status errors
mixin ServerError {
  /// Message the server respond with.
  /// This will be an Map, Iterable or [ServerErrorMessage] if
  /// no deserialization errors will happen.
  Object? get message;
}

/// Throws when an unsupported for serialization response data is received.
final class SerializationError implements ApiError {
  SerializationError.invalidData({
    required this.data,
    required this.targetType,
    required this.serializer,
    required this.originalError,
  }) : _type = 0;

  SerializationError.invalidSerializer({
    required this.data,
    required this.targetType,
    required this.serializer,
    required this.originalError,
  }) : _type = 1;

  final int _type;
  final String data;
  final String serializer;
  final Type targetType;
  final Object originalError;

  @override
  String toString() {
    return "SerializationError.${_type == 0 ? 'invalidData' : 'invalidSerializer'}(\n"
        "  data: $data,\n"
        "  serializer: $serializer,\n"
        "  targetType: $targetType,\n"
        "  originalError: $originalError,\n"
        ")";
  }
}

/// Throws when 401 status code is received.
///
/// But, if the message of response can't be serialized, then [SerializationError]
/// is throws instead.
final class AuthorizationError with ServerError implements ApiError {
  @override
  final ServerErrorMessage? message;

  AuthorizationError({
    this.message,
  });
}

/// Unknown error
final class UnknownError with ServerError implements ApiError {
  /// Deserialized error
  @override
  final ServerErrorMessage? message;

  /// Response status code
  final int statusCode;

  UnknownError({
    this.message,
    required this.statusCode,
  });
}

/// Throws when 422 status code is received
final class EntityValidationError with ServerError implements ApiError {
  final Type? bodyType;

  @override
  final ServerErrorMessage? message;

  EntityValidationError({
    this.bodyType,
    this.message,
  });
}

final class PermissionError with ServerError implements ApiError {
  @override
  final ServerErrorMessage? message;

  final Uri? endpoint;
  final String? method;

  PermissionError({
    this.message,
    this.endpoint,
    this.method,
  });
}

/// The server error message.
final class ServerErrorMessage {
  /// List of errors the server respond with.
  final List<String> errors;

  ServerErrorMessage({
    required this.errors,
  });
}
