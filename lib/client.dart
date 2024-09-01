part of unsplash_api;

final class Response {
  final Stream<List<int>> stream;
  final Map<String, String> headers;
  final int statusCode;

  Response({
    required this.stream,
    required this.headers,
    required this.statusCode,
  });
}

abstract interface class HttpClient {
  HttpClient();

  Uri? get base;
  set base(Uri? value);

  /// Global headers
  Map<String, String> get headers;

  /// Global query parameters
  Map<String, dynamic> get queryParameters;

  FutureOr<Response> raw({
    required String method,
    required Uri endpoint,
    Map<String, String>? headers,
    Stream<List<int>>? bytesStream,
  });

  FutureOr<Response> relative({
    required String method,
    required String path,
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
    Stream<List<int>>? data,
  }) {
    assert(base != null, "base must be not null when making get()");
    return raw(
      method: method,
      headers: {
        ...this.headers,
        ...?headers,
      },
      bytesStream: data,
      endpoint: base!.replace(
        queryParameters: {
          ...this.queryParameters,
          ...?queryParameters,
        },
        pathSegments: [
          ...base!.pathSegments,
          ...path.split('/'),
        ],
      ),
    );
  }

  /// Make GET request to the [base]
  FutureOr<Response> get(String path, {
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
  }) {
    assert(base != null, "base must be not null when making get()");
    return relative(
      method: 'GET',
      path: path,
      queryParameters: queryParameters,
      headers: {
        ...this.headers,
        ...?headers,
      },
    );
  }

  FutureOr<Response> post(String path, Stream<List<int>> data, {
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
  }) {
    assert(base != null, "base must be not null when making get()");
    return relative(
      method: 'POST',
      data: data,
      queryParameters: queryParameters,
      path: path,
      headers: {
        ...this.headers,
        ...?headers,
      },
    );
  }

  FutureOr<Response> put(String path, {
    Stream<List<int>>? data,
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
  }) {
    assert(base != null, "base must be not null when making get()");
    return relative(
      method: 'PUT',
      data: data,
      queryParameters: queryParameters,
      path: path,
      headers: {
        ...this.headers,
        ...?headers,
      },
    );
  }

  FutureOr<Response> delete(String path, {
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
  }) {
    assert(base != null, "base must be not null when making get()");
    return relative(
      method: 'DELETE',
      queryParameters: queryParameters,
      path: path,
      headers: {
        ...this.headers,
        ...?headers,
      },
    );
  }
}