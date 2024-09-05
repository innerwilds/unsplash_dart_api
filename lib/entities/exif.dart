part of unsplash_api;

@JsonSerializable()
class UpdateExif {
  /// Camera's brand
  String? make;
  /// Camera's model
  String? model;
  /// Camera's exposure time
  String? exposureTime;
  /// Camera's aperture value
  String? apertureValue;
  /// Camera's focal length
  String? focalLength;
  /// ISO speed ratings
  String? isoSpeedRatings;

  Map<String, Object?> toJson() => _$UpdateExifToJson(this);
}