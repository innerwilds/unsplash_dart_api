part of unsplash_api;

final class UserPhotosQuery  {
  UserPhotosQuery();

  int page = 1;

  int _perPage = 10;
  int get perPage => _perPage;
  set perPage(int value) => _perPage = max(value, 1);

  UserPhotosQueryOrderBy orderBy = UserPhotosQueryOrderBy.latest;

  /// Whether to include stats for each photo
  bool stats = false;
  /// Resolutions of included stats
  /// This parameter is omitted if [stats] is false.
  StatisticsResolution resolution = StatisticsResolution.days;

  int _statQuantity = 30;
  /// The amount of for each stat
  int get statQuantity => _statQuantity;
  /// The amount of for each stat
  set statQuantity(int value) => _statQuantity = max(value, 1);

  Orientation? orientation;

  Map<String, String> toQueryParameters() {
    return {
      'page': '$page',
      'per_page': '$perPage',
      'order_by': orderBy.name,
      if (stats)
        'stats': 'true',
      if (stats)
        'resolution': resolution.name,
      if (stats)
        'quantity': '$statQuantity',
      if (orientation != null)
        'orientation': orientation!.name,
    };
  }
}