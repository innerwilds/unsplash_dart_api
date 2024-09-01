import 'dart:math';

import 'package:http/http.dart' as http;
import 'package:test/test.dart';
import 'package:unsplash_api/unsplash_api.dart';

final aCodeUnit = 'a'.codeUnitAt(0);
final zCodeUnit = 'z'.codeUnitAt(0);

extension on Random {
  String nextString(int length) {
    return List.generate(length, (_) {
      return String.fromCharCode(
          nextInt(zCodeUnit - aCodeUnit) + aCodeUnit
      );
    }).join('');
  }
  String? nextNullableString(int length) {
    return nextBool() ? nextString(length) : null;
  }
}

void main() {
  late _RobberyHttpClient client;
  late UnsplashApi api;

  setUp(() {
    client = _RobberyHttpClient();
    api = UnsplashApi(
      accessToken: '1234',
      httpClient: client,
    );
  });

  test("UnsplashApi puts a clientId and an accessKey to request headers or query", () async {
    final request = await client.grabRequest(() async {
      await api.getRandomPhoto(RandomPhotoQuery());
    });

    if (request.headers.containsKey('Authorization')) {
      expect(request.headers['Authorization'], equals('Client-ID 1234'));
    }
    else {
      expect(request.url.queryParameters['client_id'], isNotNull);
      expect(request.url.queryParameters['client_id'], equals('1234'));
    }
  });

  final rnd = Random();

  group("random RandomPhotoQuery() fully translates into Uri queryParameters within when using through UnsplashApi.getRandomPhotos", () {
    const total = 1000;
    // I though it will be parallelized... but it's not...
    Future.forEach(List.generate(total, (index) {
      return (index, () async {
        final useTopicsCollectionsOrNotAtAll = rnd.nextInt(3);
        final randomWords = useTopicsCollectionsOrNotAtAll > 1 ? null : List.generate(100, (_) {
          return rnd.nextString(100);
        });

        final query = RandomPhotoQuery()
          ..count = rnd.nextInt(31)
          ..contentFilter = ContentFilter.values[rnd.nextInt(ContentFilter.values.length)]
          ..query = rnd.nextNullableString(100)
          ..username = rnd.nextNullableString(100)
          ..topics = useTopicsCollectionsOrNotAtAll == 0 ? randomWords : null
          ..collections = useTopicsCollectionsOrNotAtAll == 1 ? randomWords : null
          ..orientation = index % 2 == 0 ? Orientation.values[rnd.nextInt(Orientation.values.length)] : null;

        final request = await client.grabRequest(() async {
          await api.getRandomPhoto(query);
        });

        expect(request.method, equalsIgnoringCase('GET'));
        expect(request.url.queryParameters['count'], equals(query.count.toString()), reason: 'query.count');
        expect(request.url.queryParameters['contentFilter'], equalsIgnoringCase(query.contentFilter.name), reason: 'query.contentFilter');
        expect(request.url.queryParameters['orientation'], equals(query.orientation?.name), reason: 'query.name');
        expect(request.url.queryParameters['username'], equals(query.username), reason: 'query.username');
        expect(request.url.queryParameters['query'], equals(query.query), reason: 'query.query');

        expect(request.url.queryParameters['topics']?.split(','), equals(query.topics), reason: 'query.topics');
        expect(request.url.queryParameters['collections']?.split(','), equals(query.collections), reason: 'query.collections');
      });
    }), (action) {
      test("Variant ${action.$1}/$total", action.$2);
    });
  });
}

final class _RobberyHttpClient extends http.BaseClient {
  http.BaseRequest? _requestToGrab;

  Future<http.BaseRequest> grabRequest(Future Function() sendExecutor) async {
    await sendExecutor();
    final req = _requestToGrab;
    assert(req != null, "grabRequest sendExecutor must use send() method with awaiting it result");
    return _requestToGrab!;
  }

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    _requestToGrab = request;
    return http.StreamedResponse(
      Stream.fromIterable([]), 404,
      headers: {},
      contentLength: null,
      isRedirect: false,
      persistentConnection: request.persistentConnection,
      reasonPhrase: null,
      request: request,
    );
  }
}