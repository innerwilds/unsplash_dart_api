part of unsplash_api;

@freezed
class PhotoUrls with _$PhotoUrls {
  const factory PhotoUrls({
    String? raw,
    String? full,
    String? regular,
    String? small,
    String? thumb,
  }) = _PhotoUrls;

  factory PhotoUrls.fromJson(Map<String, Object?> json)
    => _$PhotoUrlsFromJson(json);
}