part of unsplash_api;

@JsonEnum(fieldRename: FieldRename.snake)
enum SearchColorEnum {
  blackAndWhite,
  black,
  white,
  yellow,
  orange,
  red,
  purple,
  magenta,
  green,
  teal,
  blue,
}

@JsonEnum(fieldRename: FieldRename.snake)
enum SearchPhotosOrderBy {
  relevant,
  latest,
}

@JsonSerializable(includeIfNull: false)
class SearchPhotosQuery {
  SearchPhotosOrderBy orderBy = SearchPhotosOrderBy.relevant;
  List<String> collections = [];

  Map<String, Object?> toJson() => _$SearchPhotosQueryToJson(this);
}