part of unsplash_api;

@JsonSerializable(createToJson: false)
class UserStatistics {
  const UserStatistics({
    required this.username,
    required this.downloads,
    required this.views,
  });

  final String username;
  final Statistics downloads;
  final Statistics views;

  factory UserStatistics.fromJson(Map<String, Object?> json)
    => _$UserStatisticsFromJson(json);
}