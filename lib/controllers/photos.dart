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

final class PhotoController extends BaseController {
  PhotoController(super.config);

  Future<Page<Photo, PhotosQuery>> getListPhotos(PhotosQuery query) async {
    return await _getPage<Photo, PhotosQuery>('photos',
      queryFromLink: (link) => link.toPhotosQuery(),
      queryParameters: query.toJson(),
    );
  }

  /// Returns one [Photo] if [RandomPhotoQuery.count] is not specified.
  /// Returns one or many [Photo] if [RandomPhotoQuery.count] is specified.
  Future<Photo> getPhoto(String id) async {
    return (await _get<Photo>('photos/$id')).data!;
  }

  /// Returns one [Photo] if [RandomPhotoQuery.count] is not specified.
  /// Returns one or many [Photo] if [RandomPhotoQuery.count] is specified.
  Future<List<Photo>> getRandomPhotos(RandomPhotoQuery query) async {
    return (await _get<List<Photo>>('photos/random',
      queryParameters: query.toJson(),
    )).data!;
  }

  /// Returns one [Photo] if [RandomPhotoQuery.count] is not specified.
  /// Returns one or many [Photo] if [RandomPhotoQuery.count] is specified.
  Future<List<Photo>> getPhotoStatistics(String id, UserStatisticsQuery query) async {
    return (await _get<List<Photo>>('photos/$id/statistics',
      queryParameters: query.toJson(),
    )).data!;
  }

  Future<TrackedDownloadPhoto> trackPhotoDownload({
    /// A [Links.downloadLocation] from [Photo.links]
    required String downloadLocation,
  }) async {
    _ensureAuthorized(AuthKind.any);
    final uri = Uri.parse(downloadLocation);
    return (await _get<TrackedDownloadPhoto>(uri.path,
      queryParameters: uri.queryParameters,
    )).data!;
  }

  // TODO(WHY DOCS DOESN'T DESCRIBE WHERE IS THE PARAMETERS SHOULD APPEAR)
  Future<Photo> updatePhoto(String id, UpdatePhoto data) async {
    _ensureAuthorized(AuthKind.user);
    _ensureScoped(OAuthScope.writePhotos, 'photo.updatePhoto');
    return (await _put<Photo>('photos/$id',
      queryParameters: data.toJson(),
    )).data!;
  }

  /// Unlike the [unlike] method this method returns 'abbreviated' [Photo].
  Future<Photo> like(String id) async {
    _ensureAuthorized(AuthKind.user);
    _ensureScoped(OAuthScope.writeLikes, 'photo.like');
    return (await _post<Photo>('photos/$id/like')).data!;
  }

  /// Unlike the [like] method this method doesn't return anything.
  Future<void> unlike(String id) async {
    _ensureAuthorized(AuthKind.user);
    _ensureScoped(OAuthScope.writeLikes, 'photo.unlike');
    await _delete<Null>('photos/$id/like');
  }
}