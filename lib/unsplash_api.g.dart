// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unsplash_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PortfolioImpl _$$PortfolioImplFromJson(Map<String, dynamic> json) =>
    _$PortfolioImpl(
      url: json['url'] as String,
    );

Map<String, dynamic> _$$PortfolioImplToJson(_$PortfolioImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
    };

_$UserStatisticsImpl _$$UserStatisticsImplFromJson(Map<String, dynamic> json) =>
    _$UserStatisticsImpl(
      username: json['username'] as String,
      downloads: Statistics.fromJson(json['downloads'] as Map<String, dynamic>),
      views: Statistics.fromJson(json['views'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserStatisticsImplToJson(
        _$UserStatisticsImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'downloads': instance.downloads,
      'views': instance.views,
    };

_$UserStatisticsQueryImpl _$$UserStatisticsQueryImplFromJson(
        Map<String, dynamic> json) =>
    _$UserStatisticsQueryImpl(
      resolution: $enumDecodeNullable(
              _$StatisticsResolutionEnumMap, json['resolution']) ??
          StatisticsResolution.days,
      quantity: (json['quantity'] as num?)?.toInt() ?? 30,
    );

Map<String, dynamic> _$$UserStatisticsQueryImplToJson(
        _$UserStatisticsQueryImpl instance) =>
    <String, dynamic>{
      'resolution': _$StatisticsResolutionEnumMap[instance.resolution]!,
      'quantity': instance.quantity,
    };

const _$StatisticsResolutionEnumMap = {
  StatisticsResolution.days: 'days',
};

_$StatisticsImpl _$$StatisticsImplFromJson(Map<String, dynamic> json) =>
    _$StatisticsImpl(
      total: (json['total'] as num).toInt(),
      historical:
          Historical.fromJson(json['historical'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StatisticsImplToJson(_$StatisticsImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'historical': instance.historical,
    };

_$UserPhotosQueryImpl _$$UserPhotosQueryImplFromJson(
        Map<String, dynamic> json) =>
    _$UserPhotosQueryImpl(
      page: (json['page'] as num?)?.toInt() ?? 1,
      perPage: (json['per_page'] as num?)?.toInt() ?? 10,
      orderBy: $enumDecodeNullable(
              _$UserPhotosQueryOrderByEnumMap, json['order_by']) ??
          UserPhotosQueryOrderBy.latest,
      stats: json['stats'] as bool? ?? false,
      resolution: $enumDecodeNullable(
              _$StatisticsResolutionEnumMap, json['resolution']) ??
          StatisticsResolution.days,
      statQuantity: (json['quantity'] as num?)?.toInt() ?? 30,
      orientation:
          $enumDecodeNullable(_$OrientationEnumMap, json['orientation']),
    );

Map<String, dynamic> _$$UserPhotosQueryImplToJson(
    _$UserPhotosQueryImpl instance) {
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

_$UserCollectionsQueryImpl _$$UserCollectionsQueryImplFromJson(
        Map<String, dynamic> json) =>
    _$UserCollectionsQueryImpl(
      page: (json['page'] as num?)?.toInt() ?? 1,
      perPage: (json['per_page'] as num?)?.toInt() ?? 10,
    );

Map<String, dynamic> _$$UserCollectionsQueryImplToJson(
        _$UserCollectionsQueryImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'per_page': instance.perPage,
    };

_$UserLikedPhotosQueryImpl _$$UserLikedPhotosQueryImplFromJson(
        Map<String, dynamic> json) =>
    _$UserLikedPhotosQueryImpl(
      page: (json['page'] as num?)?.toInt() ?? 1,
      perPage: (json['per_page'] as num?)?.toInt() ?? 10,
      orderBy: $enumDecodeNullable(
              _$UserLikedPhotosQueryOrderByEnumMap, json['order_by']) ??
          UserLikedPhotosQueryOrderBy.latest,
      orientation:
          $enumDecodeNullable(_$OrientationEnumMap, json['orientation']),
    );

Map<String, dynamic> _$$UserLikedPhotosQueryImplToJson(
    _$UserLikedPhotosQueryImpl instance) {
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

_$PhotoStatisticsQueryImpl _$$PhotoStatisticsQueryImplFromJson(
        Map<String, dynamic> json) =>
    _$PhotoStatisticsQueryImpl(
      quantity: (json['quantity'] as num?)?.toInt() ?? 1,
      resolution: $enumDecodeNullable(
              _$StatisticsResolutionEnumMap, json['resolution']) ??
          StatisticsResolution.days,
    );

Map<String, dynamic> _$$PhotoStatisticsQueryImplToJson(
        _$PhotoStatisticsQueryImpl instance) =>
    <String, dynamic>{
      'quantity': instance.quantity,
      'resolution': _$StatisticsResolutionEnumMap[instance.resolution]!,
    };

_$RandomPhotoQueryImpl _$$RandomPhotoQueryImplFromJson(
        Map<String, dynamic> json) =>
    _$RandomPhotoQueryImpl(
      collections: (json['collections'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      topics:
          (json['topics'] as List<dynamic>?)?.map((e) => e as String).toList(),
      username: json['username'] as String?,
      query: json['query'] as String?,
      orientation:
          $enumDecodeNullable(_$OrientationEnumMap, json['orientation']),
      contentFilter:
          $enumDecodeNullable(_$ContentFilterEnumMap, json['content_filter']) ??
              ContentFilter.low,
      count: (json['count'] as num?)?.toInt() ?? 30,
    );

Map<String, dynamic> _$$RandomPhotoQueryImplToJson(
    _$RandomPhotoQueryImpl instance) {
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

_$PhotosQueryImpl _$$PhotosQueryImplFromJson(Map<String, dynamic> json) =>
    _$PhotosQueryImpl(
      page: (json['page'] as num?)?.toInt() ?? 1,
      perPage: (json['per_page'] as num?)?.toInt() ?? 10,
      orderBy: $enumDecodeNullable(_$OrderByPhotosEnumMap, json['order_by']) ??
          OrderByPhotos.latest,
    );

Map<String, dynamic> _$$PhotosQueryImplToJson(_$PhotosQueryImpl instance) =>
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

_$UserBadgeImpl _$$UserBadgeImplFromJson(Map<String, dynamic> json) =>
    _$UserBadgeImpl(
      title: json['title'] as String?,
      primary: json['primary'] as bool?,
      slug: json['slug'] as String?,
      link: json['link'] as String?,
    );

Map<String, dynamic> _$$UserBadgeImplToJson(_$UserBadgeImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull('primary', instance.primary);
  writeNotNull('slug', instance.slug);
  writeNotNull('link', instance.link);
  return val;
}

_$UpdatePhotoImpl _$$UpdatePhotoImplFromJson(Map<String, dynamic> json) =>
    _$UpdatePhotoImpl(
      description: json['description'] as String?,
      showOnProfile: json['show_on_profile'] as String?,
      tags: json['tags'] as String?,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      exif: json['exif'] == null
          ? null
          : Exif.fromJson(json['exif'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UpdatePhotoImplToJson(_$UpdatePhotoImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  writeNotNull('show_on_profile', instance.showOnProfile);
  writeNotNull('tags', instance.tags);
  writeNotNull('location', instance.location?.toJson());
  writeNotNull('exif', instance.exif?.toJson());
  return val;
}

_$ExifImpl _$$ExifImplFromJson(Map<String, dynamic> json) => _$ExifImpl(
      make: json['make'] as String?,
      model: json['model'] as String?,
      exposureTime: json['exposure_time'] as String?,
      apertureValue: json['aperture_value'] as String?,
      focalLength: json['focal_length'] as String?,
      isoSpeedRatings: json['iso_speed_ratings'] as String?,
    );

Map<String, dynamic> _$$ExifImplToJson(_$ExifImpl instance) {
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

_$LocationImpl _$$LocationImplFromJson(Map<String, dynamic> json) =>
    _$LocationImpl(
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      name: json['name'] as String?,
      city: json['city'] as String?,
      country: json['country'] as String?,
    );

Map<String, dynamic> _$$LocationImplToJson(_$LocationImpl instance) {
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

_$UpdateUserImpl _$$UpdateUserImplFromJson(Map<String, dynamic> json) =>
    _$UpdateUserImpl(
      username: json['username'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      email: json['email'] as String?,
      url: json['url'] as String?,
      location: json['location'] as String?,
      bio: json['bio'] as String?,
      instagramUsername: json['instagram_username'] as String?,
    );

Map<String, dynamic> _$$UpdateUserImplToJson(_$UpdateUserImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('username', instance.username);
  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('email', instance.email);
  writeNotNull('url', instance.url);
  writeNotNull('location', instance.location);
  writeNotNull('bio', instance.bio);
  writeNotNull('instagram_username', instance.instagramUsername);
  return val;
}

_$ProfileImageImpl _$$ProfileImageImplFromJson(Map<String, dynamic> json) =>
    _$ProfileImageImpl(
      small: json['small'] as String,
      medium: json['medium'] as String,
      large: json['large'] as String,
    );

Map<String, dynamic> _$$ProfileImageImplToJson(_$ProfileImageImpl instance) =>
    <String, dynamic>{
      'small': instance.small,
      'medium': instance.medium,
      'large': instance.large,
    };

_$SocialImpl _$$SocialImplFromJson(Map<String, dynamic> json) => _$SocialImpl(
      instagramUsername: json['instagram_username'] as String?,
      portfolioUrl: json['portfolio_url'] as String?,
      twitterUsername: json['twitter_username'] as String?,
    );

Map<String, dynamic> _$$SocialImplToJson(_$SocialImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('instagram_username', instance.instagramUsername);
  writeNotNull('portfolio_url', instance.portfolioUrl);
  writeNotNull('twitter_username', instance.twitterUsername);
  return val;
}

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as String,
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

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('username', instance.username);
  writeNotNull('name', instance.name);
  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('instagram_username', instance.instagramUsername);
  writeNotNull('twitter_username', instance.twitterUsername);
  writeNotNull('portfolio_url', instance.portfolioUrl);
  writeNotNull('bio', instance.bio);
  writeNotNull('location', instance.location);
  writeNotNull('total_likes', instance.totalLikes);
  writeNotNull('total_photos', instance.totalPhotos);
  writeNotNull('total_collections', instance.totalCollections);
  writeNotNull('followed_by_user', instance.followedByUser);
  writeNotNull('followers_count', instance.followersCount);
  writeNotNull('following_count', instance.followingCount);
  writeNotNull('downloads', instance.downloads);
  writeNotNull('social', instance.social);
  writeNotNull('profile_image', instance.profileImage);
  writeNotNull('badge', instance.badge);
  writeNotNull('links', instance.links);
  return val;
}

_$StatValueImpl _$$StatValueImplFromJson(Map<String, dynamic> json) =>
    _$StatValueImpl(
      date: DateTime.parse(json['date'] as String),
      value: (json['value'] as num).toInt(),
    );

Map<String, dynamic> _$$StatValueImplToJson(_$StatValueImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'value': instance.value,
    };

_$HistoricalImpl _$$HistoricalImplFromJson(Map<String, dynamic> json) =>
    _$HistoricalImpl(
      change: (json['change'] as num).toInt(),
      average: (json['average'] as num).toInt(),
      resolution: json['resolution'] as String,
      quantity: (json['quantity'] as num).toInt(),
      values: (json['values'] as List<dynamic>)
          .map((e) => StatValue.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HistoricalImplToJson(_$HistoricalImpl instance) =>
    <String, dynamic>{
      'change': instance.change,
      'average': instance.average,
      'resolution': instance.resolution,
      'quantity': instance.quantity,
      'values': instance.values,
    };

_$UserLinksImpl _$$UserLinksImplFromJson(Map<String, dynamic> json) =>
    _$UserLinksImpl(
      self: json['self'] as String?,
      html: json['html'] as String?,
      photos: json['photos'] as String?,
      likes: json['likes'] as String?,
      portfolio: json['portfolio'] as String?,
    );

Map<String, dynamic> _$$UserLinksImplToJson(_$UserLinksImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('self', instance.self);
  writeNotNull('html', instance.html);
  writeNotNull('photos', instance.photos);
  writeNotNull('likes', instance.likes);
  writeNotNull('portfolio', instance.portfolio);
  return val;
}

_$PhotoLinksImpl _$$PhotoLinksImplFromJson(Map<String, dynamic> json) =>
    _$PhotoLinksImpl(
      self: json['self'] as String?,
      html: json['html'] as String?,
      download: json['download'] as String?,
      downloadLocation: json['download_location'] as String?,
    );

Map<String, dynamic> _$$PhotoLinksImplToJson(_$PhotoLinksImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('self', instance.self);
  writeNotNull('html', instance.html);
  writeNotNull('download', instance.download);
  writeNotNull('download_location', instance.downloadLocation);
  return val;
}

_$PhotoUrlsImpl _$$PhotoUrlsImplFromJson(Map<String, dynamic> json) =>
    _$PhotoUrlsImpl(
      raw: json['raw'] as String?,
      full: json['full'] as String?,
      regular: json['regular'] as String?,
      small: json['small'] as String?,
      thumb: json['thumb'] as String?,
    );

Map<String, dynamic> _$$PhotoUrlsImplToJson(_$PhotoUrlsImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('raw', instance.raw);
  writeNotNull('full', instance.full);
  writeNotNull('regular', instance.regular);
  writeNotNull('small', instance.small);
  writeNotNull('thumb', instance.thumb);
  return val;
}

_$PhotoImpl _$$PhotoImplFromJson(Map<String, dynamic> json) => _$PhotoImpl(
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

Map<String, dynamic> _$$PhotoImplToJson(_$PhotoImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('width', instance.width);
  writeNotNull('height', instance.height);
  writeNotNull('color', instance.color);
  writeNotNull('blur_hash', instance.blurHash);
  writeNotNull('likes', instance.likes);
  writeNotNull('liked_by_user', instance.likedByUser);
  writeNotNull('description', instance.description);
  writeNotNull('user', instance.user);
  writeNotNull('urls', instance.urls);
  writeNotNull('links', instance.links);
  return val;
}

_$UserAccessTokenImpl _$$UserAccessTokenImplFromJson(
        Map<String, dynamic> json) =>
    _$UserAccessTokenImpl(
      accessToken: json['access_token'] as String,
      tokenType: $enumDecode(_$TokenTypeEnumMap, json['token_type']),
      scope: (json['scope'] as List<dynamic>)
          .map((e) => $enumDecode(_$OAuthScopeEnumMap, e))
          .toSet(),
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$UserAccessTokenImplToJson(
        _$UserAccessTokenImpl instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'token_type': _$TokenTypeEnumMap[instance.tokenType]!,
      'scope': instance.scope.map((e) => _$OAuthScopeEnumMap[e]!).toList(),
      'created_at': instance.createdAt.toIso8601String(),
    };

const _$TokenTypeEnumMap = {
  TokenType.bearer: 'bearer',
};

const _$OAuthScopeEnumMap = {
  OAuthScope.public: 'public',
  OAuthScope.readPhotos: 'readPhotos',
  OAuthScope.writePhotos: 'writePhotos',
  OAuthScope.writeLikes: 'writeLikes',
  OAuthScope.readUser: 'readUser',
  OAuthScope.writeUser: 'writeUser',
};

_$TrackedDownloadPhotoImpl _$$TrackedDownloadPhotoImplFromJson(
        Map<String, dynamic> json) =>
    _$TrackedDownloadPhotoImpl(
      url: json['url'] as String,
    );

Map<String, dynamic> _$$TrackedDownloadPhotoImplToJson(
        _$TrackedDownloadPhotoImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
    };

_$SearchPhotosQueryImpl _$$SearchPhotosQueryImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchPhotosQueryImpl(
      orderBy:
          $enumDecodeNullable(_$SearchPhotosOrderByEnumMap, json['order_by']) ??
              SearchPhotosOrderBy.relevant,
      collections: (json['collections'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$SearchPhotosQueryImplToJson(
        _$SearchPhotosQueryImpl instance) =>
    <String, dynamic>{
      'order_by': _$SearchPhotosOrderByEnumMap[instance.orderBy]!,
      'collections': instance.collections,
    };

const _$SearchPhotosOrderByEnumMap = {
  SearchPhotosOrderBy.relevant: 'relevant',
  SearchPhotosOrderBy.latest: 'latest',
};
