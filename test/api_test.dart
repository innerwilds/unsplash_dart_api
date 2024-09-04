import 'package:test/test.dart';
import 'package:unsplash_api/unsplash_api.dart';

void main() {
  // Use yours...
  final api = UnsplashApi()
    ..config.accessKey = "";

  test("Trying to get random photos is successfully performed", () {
    Future<List<Photo>> requestRandomPhotos() async {
      return await api.photo.getRandomPhotos(
          RandomPhotoQuery(
            count: 30,
          )
      );
    }
    expect(requestRandomPhotos(), completes);
  });

  test("Trying to get /me doesn't pass auth assertion", () {
    Future<User> getMe() async {
      return await api.me.get();
    }
    expect(getMe(), throwsA(isA<AssertionError>()));
  });
}