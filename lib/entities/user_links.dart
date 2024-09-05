part of unsplash_api;

@JsonSerializable(createToJson: false)
class UserLinks {
  const UserLinks({
    this.self,
    this.html,
    this.photos,
    this.likes,
    this.portfolio,
  });

  final String? self;
  final String? html;
  final String? photos;
  final String? likes;
  final String? portfolio;

  factory UserLinks.fromJson(Map<String, Object?> json)
    => _$UserLinksFromJson(json);
}