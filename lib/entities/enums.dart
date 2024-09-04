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
  @JsonValue('Bearer')
  bearer,
}

enum OAuthScope {
  public,
  readPhotos,
  writePhotos,
  writeLikes,
  readUser,
  writeUser,
}

enum OAuthResponseType {
  code,
}

enum StatisticsResolution {
  days,
}