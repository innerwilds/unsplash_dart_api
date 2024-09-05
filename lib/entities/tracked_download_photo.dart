part of unsplash_api;

@JsonSerializable(createToJson: false)
class TrackedDownloadPhoto {
  const TrackedDownloadPhoto({
    required this.url,
  });

  final String url;

  factory TrackedDownloadPhoto.fromJson(Map<String, Object?> json)
    => _$TrackedDownloadPhotoFromJson(json);
}