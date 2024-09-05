part of unsplash_api;

@JsonSerializable(includeIfNull: false)
class UserPhotosQuery {
  int page = 1;
  int perPage = 10;
  UserPhotosQueryOrderBy orderBy = UserPhotosQueryOrderBy.latest;

  /// Whether to include stats for each photo
  bool stats = false;

  /// Resolutions of included stats
  /// This parameter is omitted if [stats] is false.
  StatisticsResolution resolution = StatisticsResolution.days;

  @JsonKey(name: 'quantity')
  int statQuantity = 30;

  Orientation? orientation;

  Map<String, Object?> toJson() => _$UserPhotosQueryToJson(this);
}
