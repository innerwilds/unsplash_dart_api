part of unsplash_api;

@JsonSerializable(createToJson: false)
class PhotoUrls {
  const PhotoUrls({
    this.raw,
    this.full,
    this.regular,
    this.small,
    this.thumb,
  });

  final String? raw;
  final String? full;
  final String? regular;
  final String? small;
  final String? thumb;

  factory PhotoUrls.fromJson(Map<String, Object?> json)
    => _$PhotoUrlsFromJson(json);
}