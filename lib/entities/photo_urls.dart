part of unsplash_api;

abstract class PhotoUrls implements Built<PhotoUrls, PhotoUrlsBuilder> {
  PhotoUrls._();

  factory PhotoUrls([void Function(PhotoUrlsBuilder b) updates]) = _$PhotoUrls;

  @BuiltValueField(wireName: 'raw')
  String get raw;
  @BuiltValueField(wireName: 'full')
  String get full;
  @BuiltValueField(wireName: 'regular')
  String get regular;
  @BuiltValueField(wireName: 'small')
  String get small;
  @BuiltValueField(wireName: 'thumb')
  String get thumb;

  static Serializer<PhotoUrls> get serializer => _$photoUrlsSerializer;
}