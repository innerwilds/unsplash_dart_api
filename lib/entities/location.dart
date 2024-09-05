part of unsplash_api;

@JsonSerializable(includeIfNull: false)
class UpdateLocation {
  double? latitude;
  double? longitude;
  String? name;
  String? city;
  String? country;

  Map<String, Object?> toJson() => _$UpdateLocationToJson(this);
}