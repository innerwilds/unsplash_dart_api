part of unsplash_api;

@unfreezed
class PhotosQuery with _$PhotosQuery {
  @JsonSerializable(explicitToJson: true)
  factory PhotosQuery({
    @Default(1)
    int page,
    @Default(10)
    int perPage,
    @Default(OrderByPhotos.latest)
    OrderByPhotos orderBy,
  }) = _PhotosQuery;

  factory PhotosQuery.fromJson(Map<String, Object?> json)
    => _$PhotosQueryFromJson(json);
}