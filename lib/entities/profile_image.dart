part of unsplash_api;

@freezed
class ProfileImage with _$ProfileImage {
  const factory ProfileImage({
    required String small,
    required String medium,
    required String large,
  }) = _ProfileImage;

  factory ProfileImage.fromJson(Map<String, Object?> json)
    => _$ProfileImageFromJson(json);
}