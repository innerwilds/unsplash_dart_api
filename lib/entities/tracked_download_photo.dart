part of unsplash_api;

@JsonSerializable(createToJson: false)
class TrackedDownloadPhoto {
  TrackedDownloadPhoto({
    required this.url,
  });

  String url;

  factory TrackedDownloadPhoto.fromJson(Map<String, Object?> json)
    => _$TrackedDownloadPhotoFromJson(json);
}