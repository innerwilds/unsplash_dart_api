part of unsplash_api;

@JsonSerializable(createToJson: false)
class UserBadge {
  const UserBadge({
    this.title,
    this.primary,
    this.slug,
    this.link,
  });

  final String? title;
  final bool? primary;
  final String? slug;
  final String? link;

  factory UserBadge.fromJson(Map<String, Object?> json)
    => _$UserBadgeFromJson(json);
}