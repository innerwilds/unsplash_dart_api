part of unsplash_api;

extension on Link {
  PhotosQuery toPhotosQuery() {
    final page = int.parse(uri.queryParameters['page'] ?? '');
    final perPage = int.tryParse(uri.queryParameters['per_page'] ?? '');
    final orderBy = OrderByPhotos.values
      .firstWhereOrNull((e) => e.name == uri.queryParameters['orderBy']);
    final query = PhotosQuery()..page = page;

    if (perPage != null) query.perPage = perPage;
    if (orderBy != null) query.orderBy = orderBy;

    return query;
  }
}

final class PhotoController {
  PhotoController(this.client, this.scopes);

  final HttpClient client;
final OAuthScopeController scopes;

  Future<Page<Photo, PhotosQuery>?> getListPhotos(PhotosQuery query) async {
    return await client.getPage<Photo, PhotosQuery>('photos',
      queryFromLink: (link) => link.toPhotosQuery(),
      queryParameters: query.toQueryParameters(),
    );
  }

  /// Returns one [Photo] if [RandomPhotoQuery.count] is not specified.
  /// Returns one or many [Photo] if [RandomPhotoQuery.count] is specified.
  Future<Photo?> getPhoto(String id) async {
    return (await client.getDeserialized<Photo>('photos/$id')).data;
  }

  /// Returns one [Photo] if [RandomPhotoQuery.count] is not specified.
  /// Returns one or many [Photo] if [RandomPhotoQuery.count] is specified.
  Future<List<Photo>?> getRandomPhoto(RandomPhotoQuery query) async {
    return (await client.getDeserialized<List<Photo>>('photos/random',
      queryParameters: query.toQueryParameters(),
    )).data;
  }

  /// Returns one [Photo] if [RandomPhotoQuery.count] is not specified.
  /// Returns one or many [Photo] if [RandomPhotoQuery.count] is specified.
  Future<List<Photo>?> getPhotoStatistics(String id, PhotoStatisticsQuery query) async {
    return (await client.getDeserialized<List<Photo>>('photos/$id/statistics',
      queryParameters: query.toQueryParameters(),
    )).data;
  }

  Future<TrackedPhotoDownload> trackPhotoDownload({
    /// A [Links.downloadLocation] from [Photo.links]
    required String downloadLocation,
  }) async {
    client.ensureAuthorized(AuthKind.any);
    final uri = Uri.parse(downloadLocation);
    return (await client.getDeserialized<TrackedPhotoDownload>(uri.path,
      queryParameters: uri.queryParameters,
    )).data;
  }

  // TODO(WHY DOCS DOESN'T DESCRIBE WHERE IS THE PARAMETERS SHOULD APPEAR)
  Future<Photo> updatePhoto(String id, UpdatePhoto data) async {
    client.ensureAuthorized(AuthKind.user);
    scopes.ensureScoped(OAuthScope.writePhotos, 'photo.updatePhoto');
    return (await client.putDeserialized<Photo>('photos/$id',
      queryParameters: data.toQueryParameters(),
    )).data;
  }

  /// Unlike the [unlike] method this method returns 'abbreviated' [Photo].
  Future<Photo> like(String id) async {
    client.ensureAuthorized(AuthKind.user);
    scopes.ensureScoped(OAuthScope.writeLikes, 'photo.like');
    return (await client.postDeserialized<Photo>('photos/$id/like')).data;
  }

  /// Unlike the [like] method this method doesn't return anything.
  Future<void> unlike(String id) async {
    client.ensureAuthorized(AuthKind.user);
    scopes.ensureScoped(OAuthScope.writeLikes, 'photo.unlike');
    await client.delete('photos/$id/like');
  }
}