part of unsplash_api;

@freezed
class PhotoStatisticsQuery with _$PhotoStatisticsQuery {
  const factory PhotoStatisticsQuery({
    @Default(1)
    int quantity,
    @Default(StatisticsResolution.days)
    StatisticsResolution resolution,
  }) = _PhotoStatisticsQuery;

  factory PhotoStatisticsQuery.fromJson(Map<String, Object?> json)
    => _$PhotoStatisticsQueryFromJson(json);
}