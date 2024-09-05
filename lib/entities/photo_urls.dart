part of unsplash_api;

@JsonSerializable(createToJson: false)
class PhotoUrls {
  PhotoUrls({
    this.raw,
    this.full,
    this.regular,
    this.small,
    this.thumb,
  });

  String? raw;
  String? full;
  String? regular;
  String? small;
  String? thumb;

  factory PhotoUrls.fromJson(Map<String, Object?> json)
    => _$PhotoUrlsFromJson(json);
}