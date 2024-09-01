part of unsplash_api;

abstract class Exif implements Built<Exif, ExifBuilder> {
  static Serializer<Exif> get serializer => _$exifSerializer;

  Exif._();

  /// Camera's brand
  String? get make;

  /// Camera's model
  String? get model;

  /// Camera's exposure time
  String? get exposureTime;

  /// Camera's aperture value
  String? get apertureValue;

  /// Camera's focal length
  String? get focalLength;

  /// ISO speed ratings
  String? get isoSpeedRatings;

  factory Exif([void Function(ExifBuilder) updates]) = _$Exif;
}