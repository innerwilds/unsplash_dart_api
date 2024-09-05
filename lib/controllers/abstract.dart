part of unsplash_api;

abstract interface class BaseController {
  const BaseController(this._config);

  final UnsplashApiConfig _config;

  void _ensureScoped(OAuthScope scope, String callerName) {
    assert(_config.scopes.contains(scope),
    'You must register scope ${scope.name} via UnsplashApi.scope scopes set. '
        'This is required by $callerName you called.'
    );
  }

  void _ensureAuthorized(AuthKind kind) {
    final unauthorizedMessage =
        'unauthorized request. you must ${switch (kind) {
      AuthKind.user => 'authorize an user using UserAccessToken',
      AuthKind.app => 'authorize an app using accessKey',
      AuthKind.any => 'authorize an app or an user',
    }}';

    final isAccessKeyPresent =
      _config.accessKey != null || _config.isAccessKeyExplicitlyPresented;

    switch (kind) {
      case AuthKind.user:
        assert(_config.userToken != null, unauthorizedMessage);
      case AuthKind.app:
        assert(isAccessKeyPresent, unauthorizedMessage);
      case AuthKind.any:
        assert(isAccessKeyPresent || _config.userToken != null, unauthorizedMessage);
    }
  }

  Map<String, String> _constructHeaders([Map<String, String>? additional]) {
    final userToken = _config.userToken;
    return {
      'Accept-Version': 'v1',
      if (userToken != null)
        authorizationHeaderName:
          '${userToken.tokenType ?? 'Bearer'} ${userToken.accessToken}'
      else if (_config.accessKey != null)
        authorizationHeaderName: 'Client-ID ${_config.accessKey}',
      ...?additional,
    };
  }

  Future<_DeserializedResponse<T>> _send<T>({
    required String path,
    required String method,
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
    Stream<List<int>>? data,
  }) async {
    final client = _DeserializableHttpClient<T>(
      _config.createHttpClient(), _config.deserializer);
    try {
      return await client.send(
        method: method,
        headers: _constructHeaders(headers),
        bytesStream: data,
        endpoint: _config.base.replace(
          queryParameters: queryParameters != null ?
            splashQueryParameters(queryParameters) : null,
          pathSegments: [
            ..._config.base.pathSegments,
            ...path.split('/'),
          ]
        ),
      );
    }
    catch (_) {
      rethrow;
    }
    finally {
      client.close();
    }
  }

  Future<_DeserializedResponse<T>> _get<T>(String path, {
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
  }) async {
    return await _send<T>(
      path: path,
      method: 'GET',
      headers: headers,
      queryParameters: queryParameters,
    );
  }

  Future<_DeserializedResponse<T>> _delete<T>(String path, {
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
  }) async {
    return await _send<T>(
      path: path,
      method: 'DELETE',
      headers: headers,
      queryParameters: queryParameters,
    );
  }

  Future<_DeserializedResponse<T>> _post<T>(String path, {
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
    Stream<List<int>>? data,
  }) async {
    return await _send<T>(
      path: path,
      method: 'POST',
      data: data,
      headers: headers,
      queryParameters: queryParameters,
    );
  }

  Future<_DeserializedResponse<T>> _put<T>(String path, {
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
    Stream<List<int>>? data,
  }) async {
    return await _send<T>(
      path: path,
      method: 'POST',
      data: data,
      headers: headers,
      queryParameters: queryParameters,
    );
  }

  Future<Page<T, Q>> _getPage<T, Q>(String path, {
    required Q Function(Link) queryFromLink,
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
  }) async {
    final result = await _get<List<T>>(path,
      queryParameters: queryParameters,
      headers: headers,
    );

    final links = Link.parse(result.headers['link'] ?? '');

    return Page(
      items: result.data ?? List.empty(),

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

final class _DeserializedResponse<T> extends StreamedResponse {
  _DeserializedResponse({
    required this.data,
    required super.statusCode,
    required super.headers,
  }) : super(stream: Stream.empty());

  final T? data;
}

final class _DeserializableHttpClient<T>
  implements HttpClient<_DeserializedResponse<T>>  {
  _DeserializableHttpClient(this.client, this.deserializer);

  final Deserializer deserializer;
  final HttpClient<StreamedResponse> client;

  @override
  FutureOr<void> close() async {
    await client.close();
  }

  @override
  FutureOr<_DeserializedResponse<T>> send({
    required String method,
    required Uri endpoint,
    Map<String, String>? headers,
    Stream<List<int>>? bytesStream,
  }) async {
    final response = await client.send(
      method: method,
      endpoint: endpoint,
      headers: headers,
      bytesStream: bytesStream,
    );
    final data = deserializer.deserialize<T>(await response.stream.toBytes());
    return _DeserializedResponse(
      statusCode: response.statusCode,
      headers: response.headers,
      data: data,
    );
  }
}