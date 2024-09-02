part of unsplash_api;

@freezed
class Exif with _$Exif {
  const factory Exif({
    /// Camera's brand
    String? make,
    /// Camera's model
    String? model,
    /// Camera's exposure time
    String? exposureTime,
    /// Camera's aperture value
    String? apertureValue,
    /// Camera's focal length
    String? focalLength,
    /// ISO speed ratings
    String? isoSpeedRatings,
  }) = _Exif;

  factory Exif.fromJson(Map<String, Object?> json)
    => _$ExifFromJson(json);
}