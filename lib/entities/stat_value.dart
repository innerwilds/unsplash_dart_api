part of unsplash_api;

@JsonSerializable(createToJson: false)
class StatValue {
  const StatValue({
    required this.date,
    required this.value,
  });

  final DateTime date;
  final int value;

  factory StatValue.fromJson(Map<String, Object?> json)
  => _$StatValueFromJson(json);
}