part of unsplash_api;

@freezed
class PhotoLinks with _$PhotoLinks {
  const factory PhotoLinks({
    String? self,
    String? html,
    String? download,
    String? downloadLocation,
  }) = _PhotoLinks;

  factory PhotoLinks.fromJson(Map<String, Object?> json)
    => _$PhotoLinksFromJson(json);
}