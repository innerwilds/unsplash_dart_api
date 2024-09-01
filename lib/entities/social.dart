part of unsplash_api;

abstract class Social implements Built<Social, SocialBuilder> {
  Social._();

  factory Social([void Function(SocialBuilder b) updates]) = _$Social;

  @BuiltValueField(wireName: 'instagram_username')
  String get instagramUsername;
  @BuiltValueField(wireName: 'portfolio_url')
  String get portfolioUrl;
  @BuiltValueField(wireName: 'twitter_username')
  String get twitterUsername;

  static Serializer<Social> get serializer => _$socialSerializer;
}