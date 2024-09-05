part of unsplash_api;

@JsonSerializable(createToJson: false)
class Statistics {
  const Statistics({
    required this.total,
    required this.historical,
  });

  final int total;
  final Historical historical;

  factory Statistics.fromJson(Map<String, Object?> json)
    => _$StatisticsFromJson(json);
}