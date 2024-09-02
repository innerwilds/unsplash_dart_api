part of unsplash_api;

@unfreezed
class UserLikedPhotosQuery with _$UserLikedPhotosQuery {
  @JsonSerializable(explicitToJson: true)
  factory UserLikedPhotosQuery({
    @Default(1)
    int page,
    @Default(10)
    int perPage,
    @Default(UserLikedPhotosQueryOrderBy.latest)
    UserLikedPhotosQueryOrderBy orderBy,
    Orientation? orientation,
  }) = _UserLikedPhotosQuery;

  factory UserLikedPhotosQuery.fromJson(Map<String, Object?> json)
    => _$UserLikedPhotosQueryFromJson(json);
}