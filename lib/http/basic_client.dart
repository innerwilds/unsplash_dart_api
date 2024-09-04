part of unsplash_api;

final class FinalResponse extends StreamedResponse {
  FinalResponse({
    required super.statusCode,
    required super.headers,
    required List<int> bytes,
    this.request,
  }) : super(stream: Stream.fromIterable([bytes]));

  final Request? request;
}

final class Request {
  Request({
    required this.method,
    required this.url,
  });

  final String method;
  final Uri url;
}

/// Make requests, waits for resulting bytes and return response.
final class InstantHttpClient implements HttpClient<FinalResponse> {
  InstantHttpClient();

  final http.Client _client = http.Client();

  @override
  FutureOr<void> close() {
    _client.close();
  }

  @override
  FutureOr<FinalResponse> send({
    required String method,
    required Uri endpoint,
    Map<String, String>? headers,
    Stream<List<int>>? bytesStream
  }) async {
    final request = http.Request(method, endpoint)
      ..followRedirects = true
      ..maxRedirects = 5
      ..persistentConnection = false;

    if (headers != null) request.headers.addAll(headers);
    if (bytesStream != null) request.bodyBytes = await bytesStream.toBytes();

    FinalResponse response;

    try {
      final httpResp = await request.send();
      response = FinalResponse(
        headers: httpResp.headers,
        statusCode: httpResp.statusCode,
        bytes: await httpResp.stream.toBytes(),
        request: Request(
          method: request.method,
          url: request.url,
        ),
      );
    }
    catch (e) {
      rethrow;
    }

    await _mayThrowError(response);

    return response;
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
  Future<void> _mayThrowError(FinalResponse response) async {
    final statusCode = response.statusCode;

    if (!_isBadStatus(statusCode)) {
      return;
    }

    ApiError error;
    ServerErrorMessage? serverError;
    String? errorString;

    try {
      errorString = await utf8.decode(await response.stream.toBytes());
      final jsonObj = json.decode(errorString);
      serverError = ServerErrorMessage(
        errors: ((jsonObj! as Map<String, dynamic>)['errors'] as Iterable)
          .cast<String>()
          .toList(),
      );
    } catch (e) {
      // We don't need to throw a [SerializationError] due to the low value of
      // server responses with deserialized errors.
    }

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

    throw _beforeThrow(error);
  }
}