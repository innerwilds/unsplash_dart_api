part of unsplash_api;

@JsonSerializable(createToJson: false)
class UserStatistics {
  UserStatistics({
    required this.username,
    required this.downloads,
    required this.views,
  });

  String username;
  Statistics downloads;
  Statistics views;

  factory UserStatistics.fromJson(Map<String, Object?> json)
    => _$UserStatisticsFromJson(json);
}