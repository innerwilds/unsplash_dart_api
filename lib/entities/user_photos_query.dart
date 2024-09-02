part of unsplash_api;

@unfreezed
class UserPhotosQuery with _$UserPhotosQuery {
  @JsonSerializable(explicitToJson: true)
  factory UserPhotosQuery({
    @Default(1)
    int page,
    @Default(10)
    int perPage,
    @Default(UserPhotosQueryOrderBy.latest)
    UserPhotosQueryOrderBy orderBy,
    /// Whether to include stats for each photo
    @Default(false)
    bool stats,
    /// Resolutions of included stats
    /// This parameter is omitted if [stats] is false.
    @Default(StatisticsResolution.days)
    StatisticsResolution resolution,
    @Default(30)
    @JsonKey(name: 'quantity')
    int statQuantity,
    Orientation? orientation,
  }) = _UserPhotosQuery;

  factory UserPhotosQuery.fromJson(Map<String, Object?> json)
    => _$UserPhotosQueryFromJson(json);
}
