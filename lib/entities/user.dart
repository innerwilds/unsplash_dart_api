part of unsplash_api;

@freezed
class User with _$User {
  const factory User({
    required String id,
    String? updatedAt,
    String? username,
    String? name,
    String? firstName,
    String? lastName,
    String? instagramUsername,
    String? twitterUsername,
    String? portfolioUrl,
    String? bio,
    String? location,
    int? totalLikes,
    int? totalPhotos,
    int? totalCollections,
    bool? followedByUser,
    int? followersCount,
    int? followingCount,
    int? downloads,
    Social? social,
    ProfileImage? profileImage,
    UserBadge? badge,
    UserLinks? links,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json)
    => _$UserFromJson(json);
}