part of unsplash_api;

@JsonSerializable(createToJson: false)
class Historical {
  const Historical({
    required this.change,
    required this.average,
    required this.resolution,
    required this.quantity,
    required this.values,
  });

  final int change;
  final int average;
  final String resolution;
  final int quantity;
  final List<StatValue> values;

  factory Historical.fromJson(Map<String, Object?> json)
    => _$HistoricalFromJson(json);
}