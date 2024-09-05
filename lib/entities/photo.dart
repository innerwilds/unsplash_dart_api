part of unsplash_api;

@JsonSerializable(createToJson: false)
class Photo {
  const Photo({
    required this.id,
    this.createdAt,
    this.updatedAt,
    this.width,
    this.height,
    this.color,
    this.blurHash,
    this.likes,
    this.likedByUser,
    this.description,
    this.user,
    this.urls,
    this.links,
  });

  final String id;
  final String? createdAt;
  final String? updatedAt;
  final int? width;
  final int? height;
  final String? color;
  final String? blurHash;
  final int? likes;
  final bool? likedByUser;
  final String? description;
  final User? user;
  final PhotoUrls? urls;
  final PhotoLinks? links;

  factory Photo.fromJson(Map<String, Object?> json)
    => _$PhotoFromJson(json);
}