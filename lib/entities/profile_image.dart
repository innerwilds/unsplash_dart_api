part of unsplash_api;

abstract class ProfileImage implements Built<ProfileImage, ProfileImageBuilder> {
  ProfileImage._();

  factory ProfileImage([void Function(ProfileImageBuilder b) updates]) = _$ProfileImage;

  @BuiltValueField(wireName: 'small')
  String get small;
  @BuiltValueField(wireName: 'medium')
  String get medium;
  @BuiltValueField(wireName: 'large')
  String get large;

  static Serializer<ProfileImage> get serializer => _$profileImageSerializer;
}