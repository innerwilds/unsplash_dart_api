part of unsplash_api;

@freezed
class TrackedDownloadPhoto with _$TrackedDownloadPhoto {
  const factory TrackedDownloadPhoto({
    required String url,
  }) = _TrackedDownloadPhoto;

  factory TrackedDownloadPhoto.fromJson(Map<String, Object?> json)
    => _$TrackedDownloadPhotoFromJson(json);
}