part of unsplash_api;

enum UserPhotosQueryOrderBy {
  latest('latest'),
  oldest('oldest'),
  popular('popular'),
  views('views'),
  downloads('downloads');
  const UserPhotosQueryOrderBy(this.name);
  final String name;
}

enum UserLikedPhotosQueryOrderBy {
  latest('latest'),
  oldest('oldest'),
  popular('popular');
  const UserLikedPhotosQueryOrderBy(this.name);
  final String name;
}

enum OrderByPhotos {
  latest,
  oldest,
  popular,
}

enum ContentFilter {
  low,
  high,
}

enum Orientation {
  landscape('landscape'),
  squarish('squarish'),
  portrait('portrait');
  const Orientation(this.name);
  final String name;
}

enum AuthKind {
  user,
  app,
  any,
}

enum TokenType {
  bearer,
}

enum OAuthScope {
  public('public'),
  readPhotos('read_photos'),
  writePhotos('write_photos'),
  writeLikes('write_likes'),
  readUser('read_user'),
  writeUser('write_user');
  const OAuthScope(this.name);
  final String name;
}

enum OAuthResponseType {
  code,
}

enum StatisticsResolution {
  days,
}