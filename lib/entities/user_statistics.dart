part of unsplash_api;

@freezed
class UserStatistics with _$UserStatistics {
  const factory UserStatistics({
    required String username,
    required Statistics downloads,
    required Statistics views,
  }) = _UserStatistics;

  factory UserStatistics.fromJson(Map<String, Object?> json)
    => _$UserStatisticsFromJson(json);
}