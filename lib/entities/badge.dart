part of unsplash_api;

abstract class UserBadge implements Built<UserBadge, UserBadgeBuilder> {
  UserBadge._();

  factory UserBadge([void Function(UserBadgeBuilder b) updates]) = _$UserBadge;

  @BuiltValueField(wireName: 'title')
  String get title;
  @BuiltValueField(wireName: 'primary')
  bool get primary;
  @BuiltValueField(wireName: 'slug')
  String get slug;
  @BuiltValueField(wireName: 'link')
  String get link;

  static Serializer<UserBadge> get serializer => _$userBadgeSerializer;
}