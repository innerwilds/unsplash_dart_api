part of unsplash_api;

@unfreezed
class UpdatePhoto with _$UpdatePhoto {
  @JsonSerializable(explicitToJson: true)
  factory UpdatePhoto({
    String? description,
    String? showOnProfile,
    String? tags,
    Location? location,
    Exif? exif,
  }) = _UpdatePhoto;

  factory UpdatePhoto.fromJson(Map<String, Object?> json)
    => _$UpdatePhotoFromJson(json);
}
