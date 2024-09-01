library unsplash_api;

import 'dart:async';
import 'dart:collection';
import 'dart:convert' show Encoding, json, utf8;
import 'dart:io' show ContentType;
import 'dart:math';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:collection/collection.dart';
import 'package:http/http.dart' as http;

import 'lib/link_header.dart';

part 'unsplash_api.g.dart';

part 'client.dart';
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
part 'entities/user_links.dart';
part 'entities/photo_links.dart';
part 'entities/photo_urls.dart';
part 'entities/photo.dart';
part 'entities/user_access_token.dart';
part 'entities/tracked_download_photo.dart';
part 'core/auth.dart';
part 'core/errors.dart';
part 'controllers/photos.dart';
part 'controllers/me.dart';
part 'controllers/users.dart';
part 'controllers/search.dart';
part 'controllers/collections.dart';
part 'controllers/topics.dart';
part 'controllers/stats.dart';
part 'core/scopes.dart';

@SerializersFor([
  UserBadge,
  Exif,
  Location,
  Photo,
  PhotoLinks,
  PhotoUrls,
  Portfolio,
  ProfileImage,
  Social,
  Statistics,
  Historical,
  StatValue,
  TrackedPhotoDownload,
  UpdatePhoto,
  UpdateUser,
  User,
  UserAccessToken,
  UserLinks,
  UserStatistics,
])
final Serializers serializers = _$serializers;

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
}

class BasicClient extends HttpClient {
  BasicClient();

  final http.Client _client = http.Client();

  @override
  Uri? base;

  @override
  final Map<String, String> headers = HashMap(
    equals: (a, b) => a.toLowerCase() == b.toLowerCase(),
    hashCode: (a) => a.toLowerCase().hashCode,
    isValidKey: (a) => a is String,
  );

  @override
  final Map<String, dynamic> queryParameters = HashMap(
    equals: (a, b) => a.toLowerCase() == b.toLowerCase(),
    hashCode: (a) => a.toLowerCase().hashCode,
    isValidKey: (a) => a is String || a is Iterable<String>,
  );

  @override
  FutureOr<Response> raw({
    required String method,
    required Uri endpoint,
    Map<String, String>? headers,
    Stream<List<int>>? bytesStream
  }) async {
    final request = http.StreamedRequest(method, endpoint)
      ..followRedirects = false
      ..maxRedirects = 1
      ..persistentConnection = false;

    if (headers != null) request.headers.addAll(headers);
    if (bytesStream != null) request.sink.addStream(bytesStream);

    final response = await _client.send(request);

    _mayThrowError(response);

    return Response(
      headers: response.headers,
      statusCode: response.statusCode,
      stream: response.stream,
    );
  }

  final List<ErrorListener> _errorListeners = [];

  ApiError _beforeThrow(ApiError error) {
    for (final emit in _errorListeners) {
      emit(error);
    }
    return error;
  }

  /// Adds error listener
  void addErrorListener(void Function(ApiError) listener) {
    if (_errorListeners.contains(listener)) {
      return;
    }
    _errorListeners.add(listener);
  }

  /// Adds error listener
  void removeErrorListener(void Function(ApiError) listener)  {
    _errorListeners.remove(listener);
  }

  /// Checks status code to be in range <200 or >=300, except 404'
  /// because 404 we use to test whether to return null or not.
  bool _isBadStatus(int statusCode) {
    if (statusCode == 404) {
      return false;
    }
    return statusCode < 200 || statusCode >= 300;
  }

  /// Checks for bad status in response.
  ///
  /// If there is bad status, then put error (explicitly via onBadStatus
  /// or implicitly via throw).
  Future<void> _mayThrowError(http.StreamedResponse response) async {
    final statusCode = response.statusCode;

    if (!_isBadStatus(statusCode)) {
      return;
    }

    ApiError error;
    ServerErrorMessage serverError;
    String? jsonString;
    Object? jsonRaw;
    List<int>? bytes;

    try {
      bytes = await response.stream.toBytes();
      jsonString = utf8.decode(bytes);
      jsonRaw = json.decode(jsonString);

      serverError = ServerErrorMessage(
        errors: ((jsonRaw! as Map<String, dynamic>)['errors'] as Iterable)
            .cast<String>()
            .toList(),
      );

      error = switch (statusCode) {
        422 || 400 => EntityValidationError(
          message: serverError,
        ),
        401 => AuthorizationError(
          message: serverError,
        ),
        403 => PermissionError(
          method: response.request?.method,
          message: serverError,
          endpoint: response.request?.url,
        ),
        _ => UnknownError(
          statusCode: response.statusCode,
          message: serverError,
        ),
      };
    } catch (e) {
      error = SerializationError(
        method: response.request?.method,
        endpoint: response.request?.url,
        statusCode: response.statusCode,
        originalError: e,
        contentSlice: jsonString?.substring(0,
          min(jsonString.length, 20),
        ) ?? '',
        contentType: response.headers['content-type'] ?? '',
        entityType: Null,
        contentSliceRaw: bytes?.take(100).toList(growable: false) ?? const [],
      );
    }

    throw _beforeThrow(error);
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

extension on Response {
  Future<T?> decode<T>(Serializer<T> serializer) async {
    return serializers.deserializeWith(serializer, await decodeBytes());
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

  FutureOr<_GenericResponse<T>> _relativeDeserialized<T>({
    required String method,
    required String path,
    Serializer<T>? serializer,
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

    serializer = serializer ?? serializers.serializerForType(T) as Serializer<T>?;

    assert(serializer != null, "Can't find serializer for $T or it is not given");

    final entity = await response.decode(serializer!);

    return _GenericResponse.from(response, entity!);
  }

  FutureOr<_GenericResponse<T>> getDeserialized<T>(String path, {
    Serializer<T>? serializer,
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
  }) async {
    return await _relativeDeserialized(
      method: 'GET',
      path: path,
      serializer: serializer,
      queryParameters: queryParameters,
      headers: headers,
    );
  }

  FutureOr<_GenericResponse<T>> putDeserialized<T>(String path, {
    Serializer<T>? serializer,
    Stream<List<int>>? data,
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
  }) async {
    return await _relativeDeserialized(
      method: 'PUT',
      path: path,
      serializer: serializer,
      queryParameters: queryParameters,
      headers: headers,
      data: data,
    );
  }

  FutureOr<_GenericResponse<T>> deleteDeserialized<T>(String path, {
    Serializer<T>? serializer,
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
  }) async {
    return await _relativeDeserialized(
      method: 'DELETE',
      path: path,
      serializer: serializer,
      queryParameters: queryParameters,
      headers: headers,
    );
  }

  FutureOr<_GenericResponse<T>> postDeserialized<T>(String path, {
    Serializer<T>? serializer,
    Stream<List<int>>? data,
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
  }) async {
    return await _relativeDeserialized(
      method: 'POST',
      path: path,
      serializer: serializer,
      queryParameters: queryParameters,
      headers: headers,
      data: data,
    );
  }

  Future<Page<T, Q>> getPage<T, Q>(String path, {
    required Q Function(Link) queryFromLink,
    Serializer<List<T>>? serializer,
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
  }) async {
    final result = await getDeserialized<List<T>>('photos',
      queryParameters: queryParameters,
      headers: headers,
      serializer: serializer,
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