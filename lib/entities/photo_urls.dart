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

  Uri? raw;
  Uri? full;
  Uri? regular;
  Uri? small;
  Uri? thumb;

  factory PhotoUrls.fromJson(Map<String, Object?> json)
    => _$PhotoUrlsFromJson(json);
}