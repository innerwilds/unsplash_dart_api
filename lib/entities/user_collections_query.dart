part of unsplash_api;

final class UserCollectionsQuery  {
  UserCollectionsQuery();

  int page = 1;

  int _perPage = 10;
  int get perPage => _perPage;
  set perPage(int value) => _perPage = max(value, 1);

  Map<String, String> toQueryParameters() {
    return {
      'page': '$page',
      'per_page': '$perPage',
    };
  }
}