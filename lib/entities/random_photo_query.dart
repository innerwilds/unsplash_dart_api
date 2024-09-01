part of unsplash_api;

class RandomPhotoQuery {
  /// Public collection ID(‘s) to filter selection
  List<String>? collections;

  /// Public topic ID(‘s) to filter selection
  List<String>? topics;

  ///	Limit selection to a single user.
  String? username;

  /// Limit selection to photos matching a search term.
  String? query;

  /// Filter by photo orientation.
  Orientation? orientation;

  /// Limit results by [content safety](https://unsplash.com/documentation#content-safety)
  ContentFilter contentFilter = ContentFilter.low;

  /// The number of photos to return.
  /// Min: 1, Max: 30
  int _count = 30;
  int get count => _count;
  set count(int v) => _count = min(max(1, v), 30);

  RandomPhotoQuery();

  Map<String, String> toQueryParameters() {
    return {
      if (collections?.isNotEmpty == true)
        'collections': collections!.join(','),
      if (topics?.isNotEmpty == true)
        'topics': topics!.join(','),
      if (username?.isNotEmpty == true)
        'username': username!,
      if (query?.isNotEmpty == true)
        'query': query!,
      if (orientation != null)
        'orientation': orientation!.name,
      'contentFilter': contentFilter.name,
    };
  }

  void validate() {
    assert(
    (collections?.isEmpty ?? true) ||
        (topics?.isEmpty ?? true),
    "You can’t use the collections or topics filtering with query parameters "
        "in the same request. See https://unsplash.com/documentation#get-a-random-photo");
    assert(count >= 1 && count <= 30, "Count must be in range >=0 and <=30");
  }
}
