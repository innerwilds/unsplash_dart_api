part of unsplash_api;

@unfreezed
class UserCollectionsQuery with _$UserCollectionsQuery {
  @JsonSerializable(explicitToJson: true)
  factory UserCollectionsQuery({
    @Default(1)
    int page,

    @Default(10)
    int perPage,
  }) = _UserCollectionsQuery;

  factory UserCollectionsQuery.fromJson(Map<String, Object?> json)
    => _$UserCollectionsQueryFromJson(json);
}