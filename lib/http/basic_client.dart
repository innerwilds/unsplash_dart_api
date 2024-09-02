part of unsplash_api;

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
  FutureOr<Response> send({
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

  static Map<String, String> toQueryParameters(Map<String, Object?> json) {
    final query = <String, String>{};

    for (final entry in json.entries) {
      _splitJsonValueIntoQuery(entry.key, entry.value, query);
    }

    return query;
  }

  static void _splitJsonValueIntoQuery(String key, Object? value, Map<String, String> o) {
    if (value == null) {
      return;
    }

    switch (value) {
      case int() || bool() || String():
        o[key] = '$value';
        break;
      case Iterable():
        assert(value.every(_isQueryListSupportedValue), "query array must fulfilled with one of next types: num, bool, String, null");
        o[key] = value.where((e) => e != null).map((e) => '$e').join(',');
        break;
      case Map():
        for (final entry in value.entries)
          if (entry.value != null)
            _splitJsonValueIntoQuery('$key[${entry.key}]', entry.value, o);
    }
  }

  static bool _isQueryListSupportedValue(Object? v) =>
      v is String || v == null || v is bool || v is num;

}