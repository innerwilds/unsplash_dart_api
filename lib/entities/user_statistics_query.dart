part of unsplash_api;

@JsonSerializable(includeIfNull: false)
class UserStatisticsQuery {
  StatisticsResolution resolution = StatisticsResolution.days;
  int quantity = 30;

  Map<String, Object?> toJson() => _$UserStatisticsQueryToJson(this);
}