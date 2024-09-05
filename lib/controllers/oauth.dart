part of unsplash_api;

final class OAuthController extends BaseController {
  OAuthController(super.config);

  /// Be sure your [UnsplashApiConfig.oauthBase] is a reverse proxy
  /// or you set [UnsplashApiConfig.accessKey].
  Uri constructUserOAuthURL({
    required Set<OAuthScope> scopes,
    OAuthResponseType responseType = OAuthResponseType.code,
  }) {
    return _config.oauthBase!.replace(
      path: '/oauth/authorize',
      queryParameters: splashQueryParameters({
        if (_config.accessKey != null)
          'client_id': _config.accessKey,
        'redirect_uri': _config.redirectUri,
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
      }),
    );
  }

  /// Obtains user access token, but not set it.
  ///
  /// Use [userAccessToken] field to set the token.
  ///
  /// Be sure your [UnsplashApiConfig.oauthBase] is a reverse proxy
  /// or you set [UnsplashApiConfig.accessKey] and [UnsplashApiConfig.secretKey].
  Future<UserAccessToken?> obtainToken(String oauthCode) async {
    final client = _config.createHttpClient();

    assert(_config.oauthBase != null, "Set oauthBase to use obtainToken method");

    try {
      final resp = await client.send(
        method: 'POST',
        endpoint: _config.oauthBase!.replace(
          path: '/oauth/token',
          queryParameters: {
            if (_config.accessKey != null) 'client_id': _config.accessKey,
            if (_config.secretKey != null) 'client_secret': _config.secretKey,
            'redirect_uri': _config.redirectUri,
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