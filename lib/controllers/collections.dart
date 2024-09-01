part of unsplash_api;

final class CollectionController {
  CollectionController(this.client, this.scopes);

  final HttpClient client;
final OAuthScopeController scopes;
}