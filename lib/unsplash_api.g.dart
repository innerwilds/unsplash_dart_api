// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unsplash_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchPhotosQuery _$SearchPhotosQueryFromJson(Map<String, dynamic> json) =>
    SearchPhotosQuery()
      ..orderBy = $enumDecode(_$SearchPhotosOrderByEnumMap, json['order_by'])
      ..collections = (json['collections'] as List<dynamic>)
          .map((e) => e as String)
          .toList();

Map<String, dynamic> _$SearchPhotosQueryToJson(SearchPhotosQuery instance) =>
    <String, dynamic>{
      'order_by': _$SearchPhotosOrderByEnumMap[instance.orderBy]!,
      'collections': instance.collections,
    };

const _$SearchPhotosOrderByEnumMap = {
  SearchPhotosOrderBy.relevant: 'relevant',
  SearchPhotosOrderBy.latest: 'latest',
};

Portfolio _$PortfolioFromJson(Map<String, dynamic> json) => Portfolio(
      url: json['url'] as String,
    );

UserStatistics _$UserStatisticsFromJson(Map<String, dynamic> json) =>
    UserStatistics(
      username: json['username'] as String,
      downloads: Statistics.fromJson(json['downloads'] as Map<String, dynamic>),
      views: Statistics.fromJson(json['views'] as Map<String, dynamic>),
    );

UserStatisticsQuery _$UserStatisticsQueryFromJson(Map<String, dynamic> json) =>
    UserStatisticsQuery()
      ..resolution =
          $enumDecode(_$StatisticsResolutionEnumMap, json['resolution'])
      ..quantity = (json['quantity'] as num).toInt();

Map<String, dynamic> _$UserStatisticsQueryToJson(
        UserStatisticsQuery instance) =>
    <String, dynamic>{
      'resolution': _$StatisticsResolutionEnumMap[instance.resolution]!,
      'quantity': instance.quantity,
    };

const _$StatisticsResolutionEnumMap = {
  StatisticsResolution.days: 'days',
};

Statistics _$StatisticsFromJson(Map<String, dynamic> json) => Statistics(
      total: (json['total'] as num).toInt(),
      historical:
          Historical.fromJson(json['historical'] as Map<String, dynamic>),
    );

UserPhotosQuery _$UserPhotosQueryFromJson(Map<String, dynamic> json) =>
    UserPhotosQuery()
      ..page = (json['page'] as num).toInt()
      ..perPage = (json['per_page'] as num).toInt()
      ..orderBy = $enumDecode(_$UserPhotosQueryOrderByEnumMap, json['order_by'])
      ..stats = json['stats'] as bool
      ..resolution =
          $enumDecode(_$StatisticsResolutionEnumMap, json['resolution'])
      ..statQuantity = (json['quantity'] as num).toInt()
      ..orientation =
          $enumDecodeNullable(_$OrientationEnumMap, json['orientation']);

Map<String, dynamic> _$UserPhotosQueryToJson(UserPhotosQuery instance) {
  final val = <String, dynamic>{
    'page': instance.page,
    'per_page': instance.perPage,
    'order_by': _$UserPhotosQueryOrderByEnumMap[instance.orderBy]!,
    'stats': instance.stats,
    'resolution': _$StatisticsResolutionEnumMap[instance.resolution]!,
    'quantity': instance.statQuantity,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('orientation', _$OrientationEnumMap[instance.orientation]);
  return val;
}

const _$UserPhotosQueryOrderByEnumMap = {
  UserPhotosQueryOrderBy.latest: 'latest',
  UserPhotosQueryOrderBy.oldest: 'oldest',
  UserPhotosQueryOrderBy.popular: 'popular',
  UserPhotosQueryOrderBy.views: 'views',
  UserPhotosQueryOrderBy.downloads: 'downloads',
};

const _$OrientationEnumMap = {
  Orientation.landscape: 'landscape',
  Orientation.squarish: 'squarish',
  Orientation.portrait: 'portrait',
};

UserCollectionsQuery _$UserCollectionsQueryFromJson(
        Map<String, dynamic> json) =>
    UserCollectionsQuery()
      ..page = (json['page'] as num).toInt()
      ..perPage = (json['per_page'] as num).toInt();

Map<String, dynamic> _$UserCollectionsQueryToJson(
        UserCollectionsQuery instance) =>
    <String, dynamic>{
      'page': instance.page,
      'per_page': instance.perPage,
    };

UserLikedPhotosQuery _$UserLikedPhotosQueryFromJson(
        Map<String, dynamic> json) =>
    UserLikedPhotosQuery()
      ..page = (json['page'] as num).toInt()
      ..perPage = (json['per_page'] as num).toInt()
      ..orderBy =
          $enumDecode(_$UserLikedPhotosQueryOrderByEnumMap, json['order_by'])
      ..orientation =
          $enumDecodeNullable(_$OrientationEnumMap, json['orientation']);

Map<String, dynamic> _$UserLikedPhotosQueryToJson(
    UserLikedPhotosQuery instance) {
  final val = <String, dynamic>{
    'page': instance.page,
    'per_page': instance.perPage,
    'order_by': _$UserLikedPhotosQueryOrderByEnumMap[instance.orderBy]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('orientation', _$OrientationEnumMap[instance.orientation]);
  return val;
}

const _$UserLikedPhotosQueryOrderByEnumMap = {
  UserLikedPhotosQueryOrderBy.latest: 'latest',
  UserLikedPhotosQueryOrderBy.oldest: 'oldest',
  UserLikedPhotosQueryOrderBy.popular: 'popular',
};

PhotoStatisticsQuery _$PhotoStatisticsQueryFromJson(
        Map<String, dynamic> json) =>
    PhotoStatisticsQuery()
      ..quantity = (json['quantity'] as num).toInt()
      ..resolution =
          $enumDecode(_$StatisticsResolutionEnumMap, json['resolution']);

Map<String, dynamic> _$PhotoStatisticsQueryToJson(
        PhotoStatisticsQuery instance) =>
    <String, dynamic>{
      'quantity': instance.quantity,
      'resolution': _$StatisticsResolutionEnumMap[instance.resolution]!,
    };

RandomPhotoQuery _$RandomPhotoQueryFromJson(Map<String, dynamic> json) =>
    RandomPhotoQuery()
      ..collections = (json['collections'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList()
      ..topics =
          (json['topics'] as List<dynamic>?)?.map((e) => e as String).toList()
      ..username = json['username'] as String?
      ..query = json['query'] as String?
      ..orientation =
          $enumDecodeNullable(_$OrientationEnumMap, json['orientation'])
      ..contentFilter =
          $enumDecode(_$ContentFilterEnumMap, json['content_filter'])
      ..count = (json['count'] as num).toInt();

Map<String, dynamic> _$RandomPhotoQueryToJson(RandomPhotoQuery instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('collections', instance.collections);
  writeNotNull('topics', instance.topics);
  writeNotNull('username', instance.username);
  writeNotNull('query', instance.query);
  writeNotNull('orientation', _$OrientationEnumMap[instance.orientation]);
  val['content_filter'] = _$ContentFilterEnumMap[instance.contentFilter]!;
  val['count'] = instance.count;
  return val;
}

const _$ContentFilterEnumMap = {
  ContentFilter.low: 'low',
  ContentFilter.high: 'high',
};

PhotosQuery _$PhotosQueryFromJson(Map<String, dynamic> json) => PhotosQuery()
  ..page = (json['page'] as num).toInt()
  ..perPage = (json['per_page'] as num).toInt()
  ..orderBy = $enumDecode(_$OrderByPhotosEnumMap, json['order_by']);

Map<String, dynamic> _$PhotosQueryToJson(PhotosQuery instance) =>
    <String, dynamic>{
      'page': instance.page,
      'per_page': instance.perPage,
      'order_by': _$OrderByPhotosEnumMap[instance.orderBy]!,
    };

const _$OrderByPhotosEnumMap = {
  OrderByPhotos.latest: 'latest',
  OrderByPhotos.oldest: 'oldest',
  OrderByPhotos.popular: 'popular',
};

UserBadge _$UserBadgeFromJson(Map<String, dynamic> json) => UserBadge(
      title: json['title'] as String?,
      primary: json['primary'] as bool?,
      slug: json['slug'] as String?,
      link: json['link'] as String?,
    );

UpdatePhoto _$UpdatePhotoFromJson(Map<String, dynamic> json) => UpdatePhoto();

Map<String, dynamic> _$UpdatePhotoToJson(UpdatePhoto instance) =>
    <String, dynamic>{};

UpdateExif _$UpdateExifFromJson(Map<String, dynamic> json) => UpdateExif()
  ..make = json['make'] as String?
  ..model = json['model'] as String?
  ..exposureTime = json['exposure_time'] as String?
  ..apertureValue = json['aperture_value'] as String?
  ..focalLength = json['focal_length'] as String?
  ..isoSpeedRatings = json['iso_speed_ratings'] as String?;

Map<String, dynamic> _$UpdateExifToJson(UpdateExif instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('make', instance.make);
  writeNotNull('model', instance.model);
  writeNotNull('exposure_time', instance.exposureTime);
  writeNotNull('aperture_value', instance.apertureValue);
  writeNotNull('focal_length', instance.focalLength);
  writeNotNull('iso_speed_ratings', instance.isoSpeedRatings);
  return val;
}

UpdateLocation _$UpdateLocationFromJson(Map<String, dynamic> json) =>
    UpdateLocation()
      ..latitude = (json['latitude'] as num?)?.toDouble()
      ..longitude = (json['longitude'] as num?)?.toDouble()
      ..name = json['name'] as String?
      ..city = json['city'] as String?
      ..country = json['country'] as String?;

Map<String, dynamic> _$UpdateLocationToJson(UpdateLocation instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('latitude', instance.latitude);
  writeNotNull('longitude', instance.longitude);
  writeNotNull('name', instance.name);
  writeNotNull('city', instance.city);
  writeNotNull('country', instance.country);
  return val;
}

UpdateUser _$UpdateUserFromJson(Map<String, dynamic> json) => UpdateUser();

Map<String, dynamic> _$UpdateUserToJson(UpdateUser instance) =>
    <String, dynamic>{};

ProfileImage _$ProfileImageFromJson(Map<String, dynamic> json) => ProfileImage(
      small: Uri.parse(json['small'] as String),
      medium: Uri.parse(json['medium'] as String),
      large: Uri.parse(json['large'] as String),
    );

Social _$SocialFromJson(Map<String, dynamic> json) => Social(
      instagramUsername: json['instagram_username'] as String?,
      portfolioUrl: json['portfolio_url'] as String?,
      twitterUsername: json['twitter_username'] as String?,
    );

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: (json['id'] as num).toInt(),
      updatedAt: json['updated_at'] as String?,
      username: json['username'] as String?,
      name: json['name'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      instagramUsername: json['instagram_username'] as String?,
      twitterUsername: json['twitter_username'] as String?,
      portfolioUrl: json['portfolio_url'] as String?,
      bio: json['bio'] as String?,
      location: json['location'] as String?,
      totalLikes: (json['total_likes'] as num?)?.toInt(),
      totalPhotos: (json['total_photos'] as num?)?.toInt(),
      totalCollections: (json['total_collections'] as num?)?.toInt(),
      followedByUser: json['followed_by_user'] as bool?,
      followersCount: (json['followers_count'] as num?)?.toInt(),
      followingCount: (json['following_count'] as num?)?.toInt(),
      downloads: (json['downloads'] as num?)?.toInt(),
      social: json['social'] == null
          ? null
          : Social.fromJson(json['social'] as Map<String, dynamic>),
      profileImage: json['profile_image'] == null
          ? null
          : ProfileImage.fromJson(
              json['profile_image'] as Map<String, dynamic>),
      badge: json['badge'] == null
          ? null
          : UserBadge.fromJson(json['badge'] as Map<String, dynamic>),
      links: json['links'] == null
          ? null
          : UserLinks.fromJson(json['links'] as Map<String, dynamic>),
    );

StatValue _$StatValueFromJson(Map<String, dynamic> json) => StatValue(
      date: DateTime.parse(json['date'] as String),
      value: (json['value'] as num).toInt(),
    );

Historical _$HistoricalFromJson(Map<String, dynamic> json) => Historical(
      change: (json['change'] as num).toInt(),
      average: (json['average'] as num).toInt(),
      resolution: json['resolution'] as String,
      quantity: (json['quantity'] as num).toInt(),
      values: (json['values'] as List<dynamic>)
          .map((e) => StatValue.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

UserLinks _$UserLinksFromJson(Map<String, dynamic> json) => UserLinks(
      self: json['self'] as String?,
      html: json['html'] as String?,
      photos: json['photos'] as String?,
      likes: json['likes'] as String?,
      portfolio: json['portfolio'] as String?,
    );

PhotoLinks _$PhotoLinksFromJson(Map<String, dynamic> json) => PhotoLinks(
      self: json['self'] as String?,
      html: json['html'] as String?,
      download: json['download'] as String?,
      downloadLocation: json['download_location'] as String?,
    );

PhotoUrls _$PhotoUrlsFromJson(Map<String, dynamic> json) => PhotoUrls(
      raw: json['raw'] as String?,
      full: json['full'] as String?,
      regular: json['regular'] as String?,
      small: json['small'] as String?,
      thumb: json['thumb'] as String?,
    );

Photo _$PhotoFromJson(Map<String, dynamic> json) => Photo(
      id: json['id'] as String,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      color: json['color'] as String?,
      blurHash: json['blur_hash'] as String?,
      likes: (json['likes'] as num?)?.toInt(),
      likedByUser: json['liked_by_user'] as bool?,
      description: json['description'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      urls: json['urls'] == null
          ? null
          : PhotoUrls.fromJson(json['urls'] as Map<String, dynamic>),
      links: json['links'] == null
          ? null
          : PhotoLinks.fromJson(json['links'] as Map<String, dynamic>),
    );

UserAccessToken _$UserAccessTokenFromJson(Map<String, dynamic> json) =>
    UserAccessToken(
      accessToken: json['access_token'] as String,
      scope: UserAccessToken._scopeFromJson(json['scope']),
      createdAt: UserAccessToken._createdAtFromJson(json['created_at']),
      tokenType: json['token_type'] as String,
      userId: json['user_id'],
      username: json['username'] as String?,
      refreshToken: json['refresh_token'] as String?,
    );

TrackedDownloadPhoto _$TrackedDownloadPhotoFromJson(
        Map<String, dynamic> json) =>
    TrackedDownloadPhoto(
      url: json['url'] as String,
    );
