part of unsplash_api;

@freezed
class Social with _$Social {
  const factory Social({
    String? instagramUsername,
    String? portfolioUrl,
    String? twitterUsername,
  }) = _Social;

  factory Social.fromJson(Map<String, Object?> json)
    => _$SocialFromJson(json);
}