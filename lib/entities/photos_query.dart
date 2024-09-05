part of unsplash_api;

@JsonSerializable(includeIfNull: false)
class PhotosQuery {
  int page = 1,
      perPage = 10;
  OrderByPhotos orderBy = OrderByPhotos.latest;

  Map<String, Object?> toJson() => _$PhotosQueryToJson(this);
}