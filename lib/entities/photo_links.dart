part of unsplash_api;

abstract class PhotoLinks implements Built<PhotoLinks, PhotoLinksBuilder> {
  PhotoLinks._();

  factory PhotoLinks([void Function(PhotoLinksBuilder b) updates]) = _$PhotoLinks;

  @BuiltValueField(wireName: 'self')
  String get self;
  @BuiltValueField(wireName: 'html')
  String get html;
  @BuiltValueField(wireName: 'download')
  String get download;
  @BuiltValueField(wireName: 'download_location')
  String get downloadLocation;

  static Serializer<PhotoLinks> get serializer => _$photoLinksSerializer;
}
