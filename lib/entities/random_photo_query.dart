part of unsplash_api;

@freezed
class RandomPhotoQuery with _$RandomPhotoQuery {
  const factory RandomPhotoQuery({
    /// Public collection ID(‘s) to filter selection
    List<String>? collections,

    /// Public topic ID(‘s) to filter selection
    List<String>? topics,

    ///	Limit selection to a single user.
    String? username,

    /// Limit selection to photos matching a search term.
    String? query,

    /// Filter by photo orientation.
    Orientation? orientation,

    /// Limit results by [content safety](https://unsplash.com/documentation#content-safety)
    @Default(ContentFilter.low)
    ContentFilter contentFilter,

    /// The number of photos to return.
    /// Min: 1, Max: 30
    @Default(30)
    int count,
  }) = _RandomPhotoQuery;

  factory RandomPhotoQuery.fromJson(Map<String, Object?> json)
    => _$RandomPhotoQueryFromJson(json);
}
