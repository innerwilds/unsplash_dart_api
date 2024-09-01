part of unsplash_api;

class PhotosQuery {
  int page = 1;
  int perPage = 10;
  OrderByPhotos orderBy = OrderByPhotos.latest;

  PhotosQuery();

  Map<String, String> toQueryParameters() {
    return {
      'page': '$page',
      'perPage': '$perPage',
      'orderBy': orderBy.name,
    };
  }
}
