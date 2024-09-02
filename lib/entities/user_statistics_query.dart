part of unsplash_api;

@unfreezed
class UserStatisticsQuery with _$UserStatisticsQuery {
  @JsonSerializable(explicitToJson: true)
  factory UserStatisticsQuery({
    @Default(StatisticsResolution.days)
    StatisticsResolution resolution,
    @Default(30)
    int quantity,
  }) = _UserStatisticsQuery;

  factory UserStatisticsQuery.fromJson(Map<String, Object?> json)
    => _$UserStatisticsQueryFromJson(json);
}