part of unsplash_api;

@freezed
class UserLinks with _$UserLinks {
  const factory UserLinks({
    String? self,
    String? html,
    String? photos,
    String? likes,
    String? portfolio,
  }) = _UserLinks;

  factory UserLinks.fromJson(Map<String, Object?> json)
    => _$UserLinksFromJson(json);
}