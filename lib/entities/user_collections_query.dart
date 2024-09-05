part of unsplash_api;

@JsonSerializable(includeIfNull: false)
class UserCollectionsQuery {
  int page = 1;
  int perPage = 10;

  Map<String, Object?> toJson() => _$UserCollectionsQueryToJson(this);
}