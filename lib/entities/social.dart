part of unsplash_api;

@JsonSerializable(createToJson: false)
class Social {
  const Social({
    this.instagramUsername,
    this.portfolioUrl,
    this.twitterUsername,
  });

  final String? instagramUsername;
  final String? portfolioUrl;
  final String? twitterUsername;

  factory Social.fromJson(Map<String, Object?> json)
    => _$SocialFromJson(json);
}