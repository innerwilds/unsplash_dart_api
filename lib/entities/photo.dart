part of unsplash_api;

@JsonSerializable(createToJson: false)
class Photo {
  Photo({
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

  String id;
  String? createdAt;
  String? updatedAt;
  int? width;
  int? height;
  String? color;
  String? blurHash;
  int? likes;
  bool? likedByUser;
  String? description;
  User? user;
  PhotoUrls? urls;
  PhotoLinks? links;

  factory Photo.fromJson(Map<String, Object?> json)
    => _$PhotoFromJson(json);
}