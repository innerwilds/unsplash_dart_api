part of unsplash_api;

@freezed
class UserAccessToken with _$UserAccessToken {
  const factory UserAccessToken({
    required String accessToken,
    required TokenType tokenType,
    required Set<OAuthScope> scope,
    required DateTime createdAt,
  }) = _UserAccessToken;

  factory UserAccessToken.fromJson(Map<String, Object?> json)
    => _$UserAccessTokenFromJson(json);
}