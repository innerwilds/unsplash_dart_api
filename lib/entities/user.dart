part of unsplash_api;

@JsonSerializable(createToJson: false)
class User {
  const User({
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

  final int id;
  final String? updatedAt;
  final String? username;
  final String? name;
  final String? firstName;
  final String? lastName;
  final String? instagramUsername;
  final String? twitterUsername;
  final String? portfolioUrl;
  final String? bio;
  final String? location;
  final int? totalLikes;
  final int? totalPhotos;
  final int? totalCollections;
  final bool? followedByUser;
  final int? followersCount;
  final int? followingCount;
  final int? downloads;
  final Social? social;
  final ProfileImage? profileImage;
  final UserBadge? badge;
  final UserLinks? links;

  factory User.fromJson(Map<String, Object?> json)
    => _$UserFromJson(json);
}