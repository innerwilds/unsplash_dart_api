library unsplash_api;

import 'dart:async';
import 'dart:collection';
import 'dart:convert' show Encoding, json, utf8;
import 'dart:io' show ContentType;
import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:collection/collection.dart';
import 'package:http/http.dart' as http;

import 'lib/link_header.dart';

part 'unsplash_api.freezed.dart';
part 'unsplash_api.g.dart';

part 'entities/enums.dart';
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

// Queries
part 'query/query_mixins.dart';
part 'query/search_photos_query.dart';

part 'http/abstract.dart';
part 'http/basic_client.dart';

/// Unsplash API base URL.
final Uri unsplashApiBase = Uri.parse('https://api.unsplash.com/');

/// Error handler type
typedef ErrorListener = void Function(ApiError);

/// The unsplash api.
class UnsplashApi {
  /// The scopes your app uses.
  ///
  /// Some endpoints must make sure you have requested some scopes.
  /// For example, [me], [MeController.get] request
  /// ensures there is [OAuthScope.readUser] scope before
  /// sending request.
  OAuthScopeController scopes = OAuthScopeController();

  /// [HttpClient] to make requests.
  /// Be aware of dart:io class with same name.
  /// The [HttpClient] is owned by this package.
  /// By default there is [BasicClient]
  /// which uses [http package](https://pub.dev/packages/http).
  HttpClient client = BasicClient();

  /// User endpoints
  UserController get user => UserController(client, scopes);

  /// Current user endpoints
  MeController get me => MeController(client, scopes);

  /// Photos endpoints
  PhotoController get photo => PhotoController(client, scopes);

  /// Search endpoints
  SearchController get search => SearchController(client, scopes);

  /// Collection endpoints
  CollectionController get collection => CollectionController(client, scopes);

  /// Topic endpoints
  TopicController get topic => TopicController(client, scopes);

  /// Stat endpoints
  StatController get stat => StatController(client, scopes);

  /// Do not use in production. Use reverse proxy.
  void authorizeUser(UserAccessToken token) => client.authorizeUser(token);

  /// Do not use in production. Use reverse proxy.
  void authorizeApp(String accessKey) => client.authorizeApp(accessKey);

  static Uri userOauthUri({
    required String host,
    required String redirectUri,
    required Set<OAuthScope> scopes,
    OAuthResponseType responseType = OAuthResponseType.code,
    String? accessKey,
  }) {
    return Uri(
      scheme: 'https',
      host: host,
      path: '/oauth/authorize',
      queryParameters: {
        'client_id': accessKey,
        'redirect_uri': redirectUri,
        'response_type': responseType.name,
        'scope': scopes.map((s) => s.name).join('+'), // todo(toLowerSnakeCase) of name
      },
    );
  }

  /// Obtains user access token, but not set it.
  ///
  /// Use [userAccessToken] field to set the token.
  static Future<UserAccessToken?> obtainToken({
    required String host,
    required String oauthCode,
    required String redirectUri,
    /// Do not use in production. Use reverse proxy.
    String? clientSecret,
    /// Do not use in production. Use reverse proxy.
    String? accessKey,
  }) async {
    final client = BasicClient();
    final response = await client.send(
      method: 'POST',
      endpoint: Uri(
        host: host,
        path: '/oauth/token',
        queryParameters: {
          'client_id': accessKey,
          'client_secret': clientSecret,
          'redirect_uri': redirectUri,
          'code': oauthCode,
          'grant_type': 'authorization_code',
        },
      ),
    );

    if (response.statusCode == 200) {
      return response.decode<UserAccessToken, UserAccessToken>();
    }

    return null;
  }
}

final class OAuthScopeController {
  /// Put scopes your app uses.
  final Set<OAuthScope> scopes = {};

  /// The [ensureScoped] asserts whether the required [OAuthScope]
  /// is registered or not.
  void ensureScoped(OAuthScope scope, String callerName) {
    assert(scopes.contains(scope),
    'You must register scope ${scope.name} via UnsplashApi.scope scopes set. '
        'This is required by $callerName you called.'
    );
  }
}

/// Package-wide deserializers. Consists of all types with @JsonSerializable
/// and corresponding List<T> where T decorated with it.
///
/// When an type decorated with JsonSerializable and used in API calls
/// then this type must be added here:
/// T: T.fromJson,
const _fromJsons = {
  UserBadge: UserBadge.fromJson,
  Exif: Exif.fromJson,
  Location: Location.fromJson,
  Photo: Photo.fromJson,
  PhotoLinks: PhotoLinks.fromJson,
  PhotoUrls: PhotoUrls.fromJson,
  Portfolio: Portfolio.fromJson,
  ProfileImage: ProfileImage.fromJson,
  Social: Social.fromJson,
  Statistics: Statistics.fromJson,
  Historical: Historical.fromJson,
  StatValue: StatValue.fromJson,
  TrackedDownloadPhoto: TrackedDownloadPhoto.fromJson,
  UpdatePhoto: UpdatePhoto.fromJson,
  UpdateUser: UpdateUser.fromJson,
  User: User.fromJson,
  UserAccessToken: UserAccessToken.fromJson,
  UserLinks: UserLinks.fromJson,
  UserStatistics: UserStatistics.fromJson,
};

extension on List<Link> {
  Link? _get(String name) {
    return firstWhereOrNull((e) => e.rel?.toLowerCase() == name);
  }
  Link? get firstPage => _get('first');
  Link? get lastPage => _get('last');
  Link? get nextPage => _get('next');
  Link? get prevPage => _get('prev');
}

extension on Response {
  /// [T] is a result type
  /// [Atom] is a atom type to build [T]
  /// [T] must be an [Atom] and [List] of an [Atom]s.
  Future<T> decode<T, Atom>() async {
    final obj = await decodeBytes();
    final fromJson = _fromJsons[Atom];

    if (fromJson == null) {
      throw UnimplementedError("There is no fromJson for an atom type $Atom");
    }

    if (obj is Iterable) {
      return [
        for (final o in obj)
          fromJson(o as Map<String, Object?>) as Atom,
      ] as T;
    }

    if (obj is Map) {
      return fromJson(obj as Map<String, Object?>) as T;
    }

    throw UnimplementedError("Response data object type was unknown ${obj?.runtimeType}");
  }
  Future<Object?> decodeBytes() async {
    final raw = headers['content-type']?.trim().toLowerCase();

    if (raw == null || raw.isEmpty) {
      return json.decode(
        await utf8.decodeStream(
          stream,
        ),
      );
    }

    final contentType = ContentType.parse(raw);
    final bytesEncoding = Encoding.getByName(contentType.charset);
    final string = await bytesEncoding?.decodeStream(stream);
    final finalEncoding = switch (contentType) {
      ContentType(mimeType: 'application/json') => json,
      _ => throw UnimplementedError('Mime-type ${contentType.mimeType} currently not implemented'),
    };

    return finalEncoding.decode(string!);
  }
}

extension on HttpClient {
  void authorizeUser(UserAccessToken token) {
    headers['authorization'] = 'Bearer ${token.accessToken}';
  }

  /// Do not use in production. Use reverse proxy.
  void authorizeApp(String accessKey)  {
    headers['authorization'] = 'Client-ID $accessKey';
  }

  void ensureAuthorized(AuthKind kind) {
    final unauthorizedMessage =
        'unauthorized request. you must ${switch (kind) {
      AuthKind.user => 'authorize an user using UserAccessToken',
      AuthKind.app => 'authorize an app using accessKey',
      AuthKind.any => 'authorize an app or an user',
    }}';

    final hv = headers['authorization']?.toLowerCase();

    assert(hv != null, unauthorizedMessage);

    final withBearer = hv!.contains('bearer');
    final withClientId = withBearer || hv.contains('client-id');

    switch (kind) {
      case AuthKind.user:
        assert(withBearer, unauthorizedMessage);
      case AuthKind.app:
        assert(withClientId, unauthorizedMessage);
      case AuthKind.any:
        assert(withClientId || withBearer, unauthorizedMessage);
    }
  }

  FutureOr<_GenericResponse<T>> _relativeDeserialized<T, Atom>({
    required String method,
    required String path,
    Stream<List<int>>? data,
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
  }) async {
    final response = await relative(
      path: path,
      method: method,
      data: data,
      headers: headers,
      queryParameters: queryParameters,
    );

    return _GenericResponse.from(response, await response.decode<T, Atom>());
  }

  FutureOr<_GenericResponse<T>> getDeserialized<T, Atom>(String path, {
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
  }) async {
    return await _relativeDeserialized<T, Atom>(
      method: 'GET',
      path: path,
      queryParameters: queryParameters,
      headers: headers,
    );
  }

  FutureOr<_GenericResponse<T>> putDeserialized<T, Atom>(String path, {
    Stream<List<int>>? data,
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
  }) async {
    return await _relativeDeserialized<T, Atom>(
      method: 'PUT',
      path: path,
      queryParameters: queryParameters,
      headers: headers,
      data: data,
    );
  }

  FutureOr<_GenericResponse<T>> deleteDeserialized<T, Atom>(String path, {
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
  }) async {
    return await _relativeDeserialized<T, Atom>(
      method: 'DELETE',
      path: path,
      queryParameters: queryParameters,
      headers: headers,
    );
  }

  FutureOr<_GenericResponse<T>> postDeserialized<T, Atom>(String path, {
    Stream<List<int>>? data,
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
  }) async {
    return await _relativeDeserialized<T, Atom>(
      method: 'POST',
      path: path,
      queryParameters: queryParameters,
      headers: headers,
      data: data,
    );
  }

  Future<Page<T, Q>> getPage<T, Q>(String path, {
    required Q Function(Link) queryFromLink,
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
  }) async {
    final result = await getDeserialized<List<T>, T>(path,
      queryParameters: queryParameters,
      headers: headers,
    );

    final links = Link.parse(result.headers['link'] ?? '');

    return Page(
      items: result.data,

      firstPageQuery: links.firstPage != null ?
        queryFromLink(links.firstPage!) : null,

      lastPageQuery: links.lastPage != null ?
        queryFromLink(links.lastPage!) : null,

      prevPageQuery: links.prevPage != null ?
        queryFromLink(links.prevPage!) : null,

      nextPageQuery: links.nextPage != null ?
        queryFromLink(links.nextPage!) : null,
    );
  }
}

final class _GenericResponse<T> {
  final Map<String, String> headers;
  final int statusCode;
  final T data;

  _GenericResponse.from(Response resp, T entity) :
    headers = resp.headers,
    statusCode = resp.statusCode,
    data = entity;
}


/// Base error.
sealed class ApiError implements Exception {}

/// Mixin to mix with class error based on bad status errors
mixin ServerError {
  /// Message the server respond with
  ServerErrorMessage? get message;
}

/// Throws when an unsupported for serialization response data is received.
final class SerializationError implements ApiError {
  /// Status code of a response
  final int statusCode;

  /// Target endpoint of a request
  final Uri? endpoint;

  /// Method used for [endpoint]
  final String? method;

  /// Original caught error (if there is one)
  final Object? originalError;

  /// Entity into which the data should have turned
  final Type entityType;

  /// Content-Type header of the response
  final String contentType;

  /// Encoded bytes of a response if there is a supported encoding.
  final String contentSlice;

  /// Slice of response bytes.
  final List<int> contentSliceRaw;

  SerializationError({
    required this.statusCode,
    this.endpoint,
    this.method,
    this.originalError,
    required this.entityType,
    required this.contentType,
    required this.contentSlice,
    required this.contentSliceRaw,
  });
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
