part of unsplash_api;

@freezed
class Statistics with _$Statistics {
  const factory Statistics({
    required int total,
    required Historical historical,
  }) = _Statistics;

  factory Statistics.fromJson(Map<String, Object?> json)
    => _$StatisticsFromJson(json);
}