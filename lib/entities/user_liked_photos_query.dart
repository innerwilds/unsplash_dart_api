part of unsplash_api;

@JsonSerializable(includeIfNull: false)
class UserLikedPhotosQuery {
  int page = 1;
  int perPage = 10;
  UserLikedPhotosQueryOrderBy orderBy = UserLikedPhotosQueryOrderBy.latest;
  Orientation? orientation;

  Map<String, Object?> toJson() => _$UserLikedPhotosQueryToJson(this);
}