part of unsplash_api;

@freezed
class UserBadge with _$UserBadge {
  factory UserBadge({
    String? title,
    bool? primary,
    String? slug,
    String? link,
  }) = _UserBadge;

  factory UserBadge.fromJson(Map<String, Object?> json)
    => _$UserBadgeFromJson(json);
}