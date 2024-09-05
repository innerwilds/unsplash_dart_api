part of unsplash_api;

@JsonSerializable()
class UpdatePhoto {
  @JsonKey(includeFromJson: false)
  String? description;

  @JsonKey(includeFromJson: false)
  String? showOnProfile;

  @JsonKey(includeFromJson: false)
  String? tags;

  @JsonKey(includeFromJson: false)
  UpdateLocation? location;

  @JsonKey(includeFromJson: false)
  UpdateExif? exif;

  Map<String, Object?> toJson() => _$UpdatePhotoToJson(this);
}
