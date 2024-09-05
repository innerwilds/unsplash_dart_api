part of unsplash_api;

@JsonSerializable(createToJson: false)
class UserLinks {
  UserLinks({
    this.self,
    this.html,
    this.photos,
    this.likes,
    this.portfolio,
  });

  String? self;
  String? html;
  String? photos;
  String? likes;
  String? portfolio;

  factory UserLinks.fromJson(Map<String, Object?> json)
    => _$UserLinksFromJson(json);
}