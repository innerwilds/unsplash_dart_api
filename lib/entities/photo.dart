part of unsplash_api;

abstract class Photo implements Built<Photo, PhotoBuilder> {
  Photo._();

  factory Photo([void Function(PhotoBuilder b) updates]) = _$Photo;

  @BuiltValueField(wireName: 'id')
  String get id;
  @BuiltValueField(wireName: 'created_at')
  String get createdAt;
  @BuiltValueField(wireName: 'updated_at')
  String get updatedAt;
  @BuiltValueField(wireName: 'width')
  int get width;
  @BuiltValueField(wireName: 'height')
  int get height;
  @BuiltValueField(wireName: 'color')
  String get color;
  @BuiltValueField(wireName: 'blur_hash')
  String get blurHash;
  @BuiltValueField(wireName: 'likes')
  int get likes;
  @BuiltValueField(wireName: 'liked_by_user')
  bool get likedByUser;
  @BuiltValueField(wireName: 'description')
  String get description;
  @BuiltValueField(wireName: 'user')
  User get user;
  @BuiltValueField(wireName: 'urls')
  PhotoUrls get urls;
  @BuiltValueField(wireName: 'links')
  PhotoLinks get links;

  static Serializer<Photo> get serializer => _$photoSerializer;
}