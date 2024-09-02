part of unsplash_api;

@freezed
class Location with _$Location {
  const factory Location({
    double? latitude,
    double? longitude,
    String? name,
    String? city,
    String? country,
  }) = _Location;

  factory Location.fromJson(Map<String, Object?> json)
    => _$LocationFromJson(json);
}