part of unsplash_api;

enum UserPhotosQueryOrderBy {
  latest,
  oldest,
  popular,
  views,
  downloads,
}

enum UserLikedPhotosQueryOrderBy {
  latest,
  oldest,
  popular,
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
  landscape,
  squarish,
  portrait,
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
  const OAuthScope(this.snake);
  final String snake;
}

enum OAuthResponseType {
  code,
}

enum StatisticsResolution {
  days,
}