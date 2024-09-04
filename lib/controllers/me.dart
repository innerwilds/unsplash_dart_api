part of unsplash_api;

final class MeController extends BaseController {
  MeController(super.config);
  
  Future<User> get() async {
    _ensureScoped(OAuthScope.readUser, "me.get");
    _ensureAuthorized(AuthKind.user);
    return (await _get<User>('/me')).data!;
  }

  // TODO(ENSURE IT REQUIRES PASS PARAMS THROUGH QUERY!!!)
  Future<User> update(UpdateUser user) async {
    _ensureScoped(OAuthScope.writeUser, "me.update");
    _ensureAuthorized(AuthKind.user);
    return (await _put<User>('/me',
      queryParameters: user.toJson(),
    )).data!;
  }
}
