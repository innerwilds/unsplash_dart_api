part of unsplash_api;

final class UserLikedPhotosQuery  {
  UserLikedPhotosQuery();

  int page = 1;

  int _perPage = 10;
  int get perPage => _perPage;
  set perPage(int value) => _perPage = max(value, 1);

  UserLikedPhotosQueryOrderBy orderBy = UserLikedPhotosQueryOrderBy.latest;

  Orientation? orientation;

  Map<String, String> toQueryParameters() {
    return {
      'page': '$page',
      'per_page': '$perPage',
      'order_by': orderBy.name,
      if (orientation != null)
        'orientation': orientation!.name,
    };
  }
}