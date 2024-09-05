part of unsplash_api;

@JsonSerializable(createToJson: false)
class Statistics {
  Statistics({
    required this.total,
    required this.historical,
  });

  int total;
  Historical historical;

  factory Statistics.fromJson(Map<String, Object?> json)
    => _$StatisticsFromJson(json);
}