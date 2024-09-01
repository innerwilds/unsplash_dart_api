part of unsplash_api;

final class UserController {
  UserController(this.client, this.scopes);

  final HttpClient client;
  final OAuthScopeController scopes;

  /// Retrieve public details on a given user.
  ///
  /// This response includes only the user’s publicly-available information.
  /// For private details on the current user, use [UnsplashApi.me],
  /// [MeController.get].
  Future<User> profile(String username) async {
    return (await client.getDeserialized<User>(
      '/users/$username',
    )).data;
  }

  /// Retrieve a single user’s portfolio link.
  Future<Portfolio> portfolio(String username) async {
    return (await client.getDeserialized<Portfolio>(
      '/users/$username/portfolio',
    )).data;
  }

  /// Get a list of photos uploaded by a user.
  /// Note: See the note on [hotlinking](https://unsplash.com/documentation#hotlinking).
  Future<Page<Photo, UserPhotosQuery>> publishedPhotosPage(String username, UserPhotosQuery query) async {
    return await client.getPage<Photo, UserPhotosQuery>('users/$username/photos',
      queryFromLink: (link) {
        return UserPhotosQuery()
          ..page = int.parse(link.uri.queryParameters['page'] ?? '')
          ..perPage = int.tryParse(link.uri.queryParameters['per_page'] ?? '') ?? query.perPage
          ..orderBy = UserPhotosQueryOrderBy.values
              .firstWhereOrNull(
                  (e) => e.name == link.uri.queryParameters['orderBy']) ??
              query.orderBy
          ..orientation = query.orientation
          ..statQuantity = query.statQuantity
          ..resolution = query.resolution
          ..stats = query.stats;
      },
    );
  }

  /// Get a list of photos liked by a user
  /// Note: See the note on [hotlinking](https://unsplash.com/documentation#hotlinking).
  Future<Page<Photo, UserLikedPhotosQuery>> likedPhotosPage(String username, UserLikedPhotosQuery query) async {
    return await client.getPage<Photo, UserLikedPhotosQuery>('users/$username/photos',
      queryFromLink: (link) {
        return UserLikedPhotosQuery()
          ..page = int.parse(link.uri.queryParameters['page'] ?? '')
          ..perPage = int.tryParse(link.uri.queryParameters['per_page'] ?? '') ?? query.perPage
          ..orderBy = UserLikedPhotosQueryOrderBy.values
              .firstWhereOrNull(
                  (e) => e.name == link.uri.queryParameters['orderBy']) ??
              query.orderBy
          ..orientation = query.orientation;
      },
    );
  }

  /// Get a list of photos liked by a user
  /// Note: See the note on [hotlinking](https://unsplash.com/documentation#hotlinking).
  Future<Page<Photo, UserCollectionsQuery>> collectionsPage(String username, UserCollectionsQuery query) async {
    return await client.getPage<Photo, UserCollectionsQuery>('users/$username/photos',
      queryFromLink: (link) {
        return UserCollectionsQuery()
          ..page = int.parse(link.uri.queryParameters['page'] ?? '')
          ..perPage = int.tryParse(link.uri.queryParameters['per_page'] ?? '') ?? query.perPage;
      },
    );
  }

  Future<UserStatistics> statistics(String username, UserStatisticsQuery query) async {
    return (await client.getDeserialized<UserStatistics>('users/$username/statistics',
      queryParameters: query.toQueryParameters(),
    )).data;
  }
}