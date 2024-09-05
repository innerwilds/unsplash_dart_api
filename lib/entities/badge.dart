part of unsplash_api;

@JsonSerializable(createToJson: false)
class UserBadge {
  UserBadge({
    this.title,
    this.primary,
    this.slug,
    this.link,
  });

  String? title;
  bool? primary;
  String? slug;
  String? link;

  factory UserBadge.fromJson(Map<String, Object?> json)
    => _$UserBadgeFromJson(json);
}