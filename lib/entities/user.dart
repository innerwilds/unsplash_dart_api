part of unsplash_api;

abstract class User implements Built<User, UserBuilder> {
  User._();

  factory User([void Function(UserBuilder b) updates]) = _$User;

  @BuiltValueField(wireName: 'id')
  String get id;
  @BuiltValueField(wireName: 'updated_at')
  String get updatedAt;
  @BuiltValueField(wireName: 'username')
  String get username;
  @BuiltValueField(wireName: 'name')
  String get name;
  @BuiltValueField(wireName: 'first_name')
  String get firstName;
  @BuiltValueField(wireName: 'last_name')
  String get lastName;
  @BuiltValueField(wireName: 'instagram_username')
  String get instagramUsername;
  @BuiltValueField(wireName: 'twitter_username')
  String get twitterUsername;
  @BuiltValueField(wireName: 'portfolio_url')
  String get portfolioUrl;
  @BuiltValueField(wireName: 'bio')
  String get bio;
  @BuiltValueField(wireName: 'location')
  String get location;
  @BuiltValueField(wireName: 'total_likes')
  int get totalLikes;
  @BuiltValueField(wireName: 'total_photos')
  int get totalPhotos;
  @BuiltValueField(wireName: 'total_collections')
  int get totalCollections;
  @BuiltValueField(wireName: 'followed_by_user')
  bool get followedByUser;
  @BuiltValueField(wireName: 'followers_count')
  int get followersCount;
  @BuiltValueField(wireName: 'following_count')
  int get followingCount;
  @BuiltValueField(wireName: 'downloads')
  int get downloads;
  @BuiltValueField(wireName: 'social')
  Social get social;
  @BuiltValueField(wireName: 'profile_image')
  ProfileImage get profileImage;
  @BuiltValueField(wireName: 'badge')
  UserBadge get badge;
  @BuiltValueField(wireName: 'links')
  UserLinks get links;

  static Serializer<User> get serializer => _$userSerializer;
}