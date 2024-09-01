part of unsplash_api;

Uri userOauthUri({
  required String host,
  required String redirectUri,
  required Set<OAuthScope> scopes,
  OAuthResponseType responseType = OAuthResponseType.code,
  String? accessKey,
}) {
  return Uri(
    scheme: 'https',
    host: host,
    path: '/oauth/authorize',
    queryParameters: {
      'client_id': accessKey,
      'redirect_uri': redirectUri,
      'response_type': responseType.name,
      'scope': scopes.map((s) => s.name).join('+'), // todo(toLowerSnakeCase) of name
    },
  );
}

/// Obtains user access token, but not set it.
///
/// Use [userAccessToken] field to set the token.
Future<UserAccessToken?> obtainToken({
  required String host,
  required String oauthCode,
  required String redirectUri,
  /// Do not use in production. Use reverse proxy.
  String? clientSecret,
  /// Do not use in production. Use reverse proxy.
  String? accessKey,
}) async {
  final client = BasicClient();
  final response = await client.raw(
    method: 'POST',
    endpoint: Uri(
      host: host,
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

  if (response.statusCode == 200) {
    return response.decode(UserAccessToken.serializer);
  }

  return null;
}