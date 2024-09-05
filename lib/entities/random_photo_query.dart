part of unsplash_api;

@JsonSerializable(includeIfNull: false)
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
  int count = 30;

  Map<String, Object?> toJson() => _$RandomPhotoQueryToJson(this);
}
