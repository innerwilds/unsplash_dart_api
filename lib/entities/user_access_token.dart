part of unsplash_api;

/// Represents an user access token obtained by [UnsplashApi.obtainToken]
abstract class UserAccessToken implements Built<UserAccessToken, UserAccessTokenBuilder> {
  static Serializer<UserAccessToken> get serializer => _$userAccessTokenSerializer;

  const UserAccessToken._();

  @BuiltValueField(wireName: 'accessToken')
  String get accessToken;

  @BuiltValueField(wireName: 'tokenType')
  TokenType get tokenType;

  @BuiltValueField(wireName: 'scope')
  Set<OAuthScope> get scope;

  @BuiltValueField(wireName: 'createdAt')
  DateTime get createdAt;

  factory UserAccessToken([void Function(UserAccessTokenBuilder) updates]) = _$UserAccessToken;
}