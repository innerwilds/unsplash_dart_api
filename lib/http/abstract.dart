part of unsplash_api;

const authorizationHeaderName = 'authorization';

abstract class StreamedResponse {
  StreamedResponse({
    required this.stream,
    required this.statusCode,
    required this.headers,
  });

  final Map<String, String> headers;
  final Stream<List<int>> stream;
  final int statusCode;
}

abstract class HttpClient<TResponse extends StreamedResponse> {
  HttpClient();

  FutureOr<StreamedResponse> send({
    required String method,
    required Uri endpoint,
    Map<String, String>? headers,
    Stream<List<int>>? bytesStream,
  });

  FutureOr<void> close();
}