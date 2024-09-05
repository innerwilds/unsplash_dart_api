part of unsplash_api;

@JsonSerializable(createToJson: false)
class Historical {
  Historical({
    required this.change,
    required this.average,
    required this.resolution,
    required this.quantity,
    required this.values,
  });

  int change;
  int average;
  String resolution;
  int quantity;
  List<StatValue> values;

  factory Historical.fromJson(Map<String, Object?> json)
    => _$HistoricalFromJson(json);
}