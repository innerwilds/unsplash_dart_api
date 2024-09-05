part of unsplash_api;

@JsonSerializable(createToJson: false)
class Social {
  Social({
    this.instagramUsername,
    this.portfolioUrl,
    this.twitterUsername,
  });

  String? instagramUsername;
  String? portfolioUrl;
  String? twitterUsername;

  factory Social.fromJson(Map<String, Object?> json)
    => _$SocialFromJson(json);
}