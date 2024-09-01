part of unsplash_api;

final class SearchController {
  SearchController(this.client, this.scopes);

  final HttpClient client;
final OAuthScopeController scopes;
}