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

@unfreezed
class SearchPhotosQuery with _$SearchPhotosQuery {
  @JsonSerializable(explicitToJson: true)
  factory SearchPhotosQuery({
    @Default(SearchPhotosOrderBy.relevant)
    SearchPhotosOrderBy orderBy,
    @Default([])
    List<String> collections,
  }) = _SearchPhotosQuery;

  factory SearchPhotosQuery.fromJson(Map<String, Object?> json)
    => _$SearchPhotosQueryFromJson(json);
}