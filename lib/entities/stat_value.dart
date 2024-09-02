part of unsplash_api;

@freezed
class StatValue with _$StatValue {
  const factory StatValue({
    required DateTime date,
    required int value,
  }) = _StatValue;

  factory StatValue.fromJson(Map<String, Object?> json)
  => _$StatValueFromJson(json);
}