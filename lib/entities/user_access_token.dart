part of unsplash_api;

@freezed
class UserAccessToken with _$UserAccessToken {
  const UserAccessToken._();

  const factory UserAccessToken({
    required String accessToken,
    @JsonKey(name: 'scope')
    required String scopeRaw,
    required int createdAt,
    required String tokenType,
    Object? userId,
    String? username,
  }) = _UserAccessToken;

  // todo()
  Set<OAuthScope> get scope =>
    scopeRaw
      .split(RegExp(r'[^_a-zA-Z]'))
      .map((e) => switch (e.trim()) {
        'public' => OAuthScope.public,
        _ => throw UnimplementedError("Unknown OAUthScope when converting a scopeRaw $e")
      })
      .toSet();

  factory UserAccessToken.fromJson(Map<String, Object?> json)
    => _$UserAccessTokenFromJson(json);
}