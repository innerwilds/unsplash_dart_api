part of unsplash_api;

@freezed
class Photo with _$Photo {
  const factory Photo({
    required String id,
    String? createdAt,
    String? updatedAt,
    int? width,
    int? height,
    String? color,
    String? blurHash,
    int? likes,
    bool? likedByUser,
    String? description,
    User? user,
    PhotoUrls? urls,
    PhotoLinks? links,
  }) = _Photo;

  factory Photo.fromJson(Map<String, Object?> json)
    => _$PhotoFromJson(json);
}