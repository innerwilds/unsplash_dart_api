part of unsplash_api;

final class MeController {
  const MeController(this.client, this.scopes);

  final HttpClient client;
final OAuthScopeController scopes;

  Future<User> get() async {
    scopes.ensureScoped(OAuthScope.readUser, "me.get");
    client.ensureAuthorized(AuthKind.user);
    return (await client.getDeserialized<User, User>('/me')).data;
  }

  // TODO(ENSURE IT REQUIRES PASS PARAMS THROUGH QUERY!!!)
  Future<User> update(UpdateUser user) async {
    scopes.ensureScoped(OAuthScope.writeUser, "me.update");
    client.ensureAuthorized(AuthKind.user);
    return (await client.putDeserialized<User, User>('/me',
      queryParameters: user.toJson(),
    )).data;
  }
}
