part of unsplash_api;

final class TopicController {
  TopicController(this.client, this.scopes);

  final HttpClient client;
final OAuthScopeController scopes;
}