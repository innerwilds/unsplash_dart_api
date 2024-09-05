part of unsplash_api;

@JsonSerializable(createToJson: false)
class StatValue {
  StatValue({
    required this.date,
    required this.value,
  });

  DateTime date;
  int value;

  factory StatValue.fromJson(Map<String, Object?> json)
  => _$StatValueFromJson(json);
}