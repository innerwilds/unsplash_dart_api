part of unsplash_api;

final class OAuthController extends BaseController {
  OAuthController(super.config);

  Uri constructUserOAuthURL({
    required String redirectUri,
    required Set<OAuthScope> scopes,
    OAuthResponseType responseType = OAuthResponseType.code,
    String? accessKey,
  }) {
    return _config.oauthBase!.replace(
      path: '/oauth/authorize',
      queryParameters: {
        'client_id': accessKey,
        'redirect_uri': redirectUri,
        'response_type': responseType.name,
        'scope': {
          for (final scope in scopes)
            switch (scope) {
              OAuthScope.public => 'public',
              OAuthScope.readPhotos => 'read_photos',
              OAuthScope.writePhotos => 'write_photos',
              OAuthScope.writeLikes => 'write_likes',
              OAuthScope.readUser => 'read_user',
              OAuthScope.writeUser => 'write_user',
            }
        }.join('+'),
      },
    );
  }

  /// Obtains user access token, but not set it.
  ///
  /// Use [userAccessToken] field to set the token.
  Future<UserAccessToken?> obtainToken({
    required String oauthCode,
    required String redirectUri,
    /// Do not use in production. Use reverse proxy.
    String? clientSecret,
    /// Do not use in production. Use reverse proxy.
    String? accessKey,
  }) async {
    final client = _config.createHttpClient();

    assert(_config.oauthBase != null, "Set oauthBase to use obtainToken method");

    try {
      final resp = await client.send(
        method: 'POST',
        endpoint: _config.oauthBase!.replace(
          path: '/oauth/token',
          queryParameters: {
            'client_id': accessKey,
            'client_secret': clientSecret,
            'redirect_uri': redirectUri,
            'code': oauthCode,
            'grant_type': 'authorization_code',
          },
        ),
      );
      final bytes = await resp.stream.toBytes();
      final token = _config.deserializer.deserialize<UserAccessToken>(bytes);
      return token;
    }
    finally {
      client.close();
    }
  }
}