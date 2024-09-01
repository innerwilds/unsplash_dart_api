part of unsplash_api;

abstract class TrackedPhotoDownload implements Built<TrackedPhotoDownload, TrackedPhotoDownloadBuilder> {
  static Serializer<TrackedPhotoDownload> get serializer => _$trackedPhotoDownloadSerializer;
  TrackedPhotoDownload._();
  @BuiltValueField(wireName: 'url')
  String get url;
  factory TrackedPhotoDownload([void Function(TrackedPhotoDownloadBuilder) updates]) = _$TrackedPhotoDownload;
}