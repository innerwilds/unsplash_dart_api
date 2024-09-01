part of unsplash_api;

final class StatController {
  StatController(this.client, this.scopes);

  final HttpClient client;
final OAuthScopeController scopes;
}