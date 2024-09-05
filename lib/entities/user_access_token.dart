part of unsplash_api;

@JsonSerializable(createToJson: false)
class UserAccessToken {
  const UserAccessToken({
    required this.accessToken,
    required this.scope,
    required this.createdAt,
    required this.tokenType,
    this.userId,
    this.username,
    this.refreshToken,
  });

  final String accessToken;

  @JsonKey(fromJson: _scopeFromJson)
  final Set<OAuthScope> scope;
  @JsonKey(fromJson: _createdAtFromJson)
  final DateTime createdAt;
  final String tokenType;

  final String? refreshToken;
  final Object? userId;
  final String? username;

  static DateTime _createdAtFromJson(Object? value) {
    return switch (value) {
      String() => DateTime.parse(value),
      int() => DateTime.fromMillisecondsSinceEpoch(value),
      _ => throw UnsupportedError(
        'Got undocumented UserAccessToken.createdAt type ${value.runtimeType}.'
        'This is a deserialization error. Make an issue.'
      ),
    };
  }

  static Set<OAuthScope> _scopeFromJson(Object? value) {
    final Set<OAuthScope> scopes = {};
    final Set<String> words = switch (value) {
      String() => value.split(',').map(_wordify).toSet(),
      Iterable() => value.map((e) => '$e').map(_wordify).toSet(),
      _ => const {},
    };

    for (final scope in OAuthScope.values) {
      final isInWords = words.contains(_wordify(scope.name));
      if (isInWords) {
        scopes.add(scope);
      }
    }

    return scopes;
  }

  factory UserAccessToken.fromJson(Map<String, Object?> json)
    => _$UserAccessTokenFromJson(json);
}

/// Removes every non-[a-zA-Z] letter from string and makes to lower cased
String _wordify(String a) =>
  a.replaceAll(RegExp('[^a-zA-Z]+'), '').toLowerCase();