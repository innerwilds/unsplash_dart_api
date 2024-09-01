part of unsplash_api;

abstract class UserStatistics implements Built<UserStatistics, UserStatisticsBuilder> {
  UserStatistics._();

  factory UserStatistics([void Function(UserStatisticsBuilder b)]) = _$UserStatistics;

  @BuiltValueField(wireName: 'username')
  String get username;

  @BuiltValueField(wireName: 'downloads')
  Statistics get downloads;

  @BuiltValueField(wireName: 'views')
  Statistics get views;

  static Serializer<UserStatistics> get serializer =>
  _$userStatisticsSerializer;
}