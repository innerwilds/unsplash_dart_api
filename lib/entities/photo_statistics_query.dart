part of unsplash_api;

@JsonSerializable(includeIfNull: false)
class PhotoStatisticsQuery {
  int quantity = 1;
  StatisticsResolution resolution = StatisticsResolution.days;

  Map<String, Object?> toJson() => _$PhotoStatisticsQueryToJson(this);
}