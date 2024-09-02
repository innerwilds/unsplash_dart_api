part of unsplash_api;

@freezed
class Historical with _$Historical {
  const factory Historical({
    required int change,
    required int average,
    required String resolution,
    required int quantity,
    required List<StatValue> values,
  }) = _Historical;

  factory Historical.fromJson(Map<String, Object?> json)
  => _$HistoricalFromJson(json);
}