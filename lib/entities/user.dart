part of unsplash_api;

@JsonSerializable(createToJson: false)
class User {
  User({
    required this.id,
    this.updatedAt,
    this.username,
    this.name,
    this.firstName,
    this.lastName,
    this.instagramUsername,
    this.twitterUsername,
    this.portfolioUrl,
    this.bio,
    this.location,
    this.totalLikes,
    this.totalPhotos,
    this.totalCollections,
    this.followedByUser,
    this.followersCount,
    this.followingCount,
    this.downloads,
    this.social,
    this.profileImage,
    this.badge,
    this.links,
  });

  String id;
  String? updatedAt;
  String? username;
  String? name;
  String? firstName;
  String? lastName;
  String? instagramUsername;
  String? twitterUsername;
  String? portfolioUrl;
  String? bio;
  String? location;
  int? totalLikes;
  int? totalPhotos;
  int? totalCollections;
  bool? followedByUser;
  int? followersCount;
  int? followingCount;
  int? downloads;
  Social? social;
  ProfileImage? profileImage;
  UserBadge? badge;
  UserLinks? links;

  factory User.fromJson(Map<String, Object?> json)
    => _$UserFromJson(json);
}