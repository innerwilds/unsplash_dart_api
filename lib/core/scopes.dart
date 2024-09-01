part of unsplash_api;

final class OAuthScopeController {
  /// Put scopes your app uses.
  final Set<OAuthScope> scopes = {};

  /// The [ensureScoped] asserts whether the required [OAuthScope]
  /// is registered or not.
  void ensureScoped(OAuthScope scope, String callerName) {
    assert(scopes.contains(scope),
    'You must register scope ${scope.name} via UnsplashApi.scope scopes set. '
        'This is required by $callerName you called.'
    );
  }
}