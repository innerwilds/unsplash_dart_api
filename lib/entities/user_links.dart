part of unsplash_api;

abstract class UserLinks implements Built<UserLinks, UserLinksBuilder> {
  UserLinks._();

  factory UserLinks([void Function(UserLinksBuilder b) updates]) = _$UserLinks;

  @BuiltValueField(wireName: 'self')
  String get self;
  @BuiltValueField(wireName: 'html')
  String get html;
  @BuiltValueField(wireName: 'photos')
  String get photos;
  @BuiltValueField(wireName: 'likes')
  String get likes;
  @BuiltValueField(wireName: 'portfolio')
  String get portfolio;

  static Serializer<UserLinks> get serializer => _$userLinksSerializer;
}