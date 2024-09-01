// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unsplash_api.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(Exif.serializer)
      ..add(Historical.serializer)
      ..add(Location.serializer)
      ..add(Photo.serializer)
      ..add(PhotoLinks.serializer)
      ..add(PhotoUrls.serializer)
      ..add(ProfileImage.serializer)
      ..add(Social.serializer)
      ..add(StatValue.serializer)
      ..add(Statistics.serializer)
      ..add(TrackedPhotoDownload.serializer)
      ..add(UpdatePhoto.serializer)
      ..add(UpdateUser.serializer)
      ..add(User.serializer)
      ..add(UserAccessToken.serializer)
      ..add(UserBadge.serializer)
      ..add(UserLinks.serializer)
      ..add(UserStatistics.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(StatValue)]),
          () => new ListBuilder<StatValue>()))
    .build();
Serializer<UserStatistics> _$userStatisticsSerializer =
    new _$UserStatisticsSerializer();
Serializer<Statistics> _$statisticsSerializer = new _$StatisticsSerializer();
Serializer<Historical> _$historicalSerializer = new _$HistoricalSerializer();
Serializer<StatValue> _$statValueSerializer = new _$StatValueSerializer();
Serializer<UserBadge> _$userBadgeSerializer = new _$UserBadgeSerializer();
Serializer<UpdatePhoto> _$updatePhotoSerializer = new _$UpdatePhotoSerializer();
Serializer<Exif> _$exifSerializer = new _$ExifSerializer();
Serializer<Location> _$locationSerializer = new _$LocationSerializer();
Serializer<UpdateUser> _$updateUserSerializer = new _$UpdateUserSerializer();
Serializer<ProfileImage> _$profileImageSerializer =
    new _$ProfileImageSerializer();
Serializer<Social> _$socialSerializer = new _$SocialSerializer();
Serializer<User> _$userSerializer = new _$UserSerializer();
Serializer<UserLinks> _$userLinksSerializer = new _$UserLinksSerializer();
Serializer<PhotoLinks> _$photoLinksSerializer = new _$PhotoLinksSerializer();
Serializer<PhotoUrls> _$photoUrlsSerializer = new _$PhotoUrlsSerializer();
Serializer<Photo> _$photoSerializer = new _$PhotoSerializer();
Serializer<UserAccessToken> _$userAccessTokenSerializer =
    new _$UserAccessTokenSerializer();
Serializer<TrackedPhotoDownload> _$trackedPhotoDownloadSerializer =
    new _$TrackedPhotoDownloadSerializer();

class _$UserStatisticsSerializer
    implements StructuredSerializer<UserStatistics> {
  @override
  final Iterable<Type> types = const [UserStatistics, _$UserStatistics];
  @override
  final String wireName = 'UserStatistics';

  @override
  Iterable<Object?> serialize(Serializers serializers, UserStatistics object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'downloads',
      serializers.serialize(object.downloads,
          specifiedType: const FullType(Statistics)),
      'views',
      serializers.serialize(object.views,
          specifiedType: const FullType(Statistics)),
    ];

    return result;
  }

  @override
  UserStatistics deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserStatisticsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'downloads':
          result.downloads.replace(serializers.deserialize(value,
              specifiedType: const FullType(Statistics))! as Statistics);
          break;
        case 'views':
          result.views.replace(serializers.deserialize(value,
              specifiedType: const FullType(Statistics))! as Statistics);
          break;
      }
    }

    return result.build();
  }
}

class _$StatisticsSerializer implements StructuredSerializer<Statistics> {
  @override
  final Iterable<Type> types = const [Statistics, _$Statistics];
  @override
  final String wireName = 'Statistics';

  @override
  Iterable<Object?> serialize(Serializers serializers, Statistics object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'total',
      serializers.serialize(object.total, specifiedType: const FullType(int)),
      'historical',
      serializers.serialize(object.historical,
          specifiedType: const FullType(Historical)),
    ];

    return result;
  }

  @override
  Statistics deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StatisticsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'historical':
          result.historical.replace(serializers.deserialize(value,
              specifiedType: const FullType(Historical))! as Historical);
          break;
      }
    }

    return result.build();
  }
}

class _$HistoricalSerializer implements StructuredSerializer<Historical> {
  @override
  final Iterable<Type> types = const [Historical, _$Historical];
  @override
  final String wireName = 'Historical';

  @override
  Iterable<Object?> serialize(Serializers serializers, Historical object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'change',
      serializers.serialize(object.change, specifiedType: const FullType(int)),
      'average',
      serializers.serialize(object.average, specifiedType: const FullType(int)),
      'resolution',
      serializers.serialize(object.resolution,
          specifiedType: const FullType(String)),
      'quantity',
      serializers.serialize(object.quantity,
          specifiedType: const FullType(int)),
      'values',
      serializers.serialize(object.values,
          specifiedType:
              const FullType(BuiltList, const [const FullType(StatValue)])),
    ];

    return result;
  }

  @override
  Historical deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HistoricalBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'change':
          result.change = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'average':
          result.average = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'resolution':
          result.resolution = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'values':
          result.values.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(StatValue)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$StatValueSerializer implements StructuredSerializer<StatValue> {
  @override
  final Iterable<Type> types = const [StatValue, _$StatValue];
  @override
  final String wireName = 'StatValue';

  @override
  Iterable<Object?> serialize(Serializers serializers, StatValue object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'date',
      serializers.serialize(object.date,
          specifiedType: const FullType(DateTime)),
      'value',
      serializers.serialize(object.value, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  StatValue deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StatValueBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime))! as DateTime;
          break;
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$UserBadgeSerializer implements StructuredSerializer<UserBadge> {
  @override
  final Iterable<Type> types = const [UserBadge, _$UserBadge];
  @override
  final String wireName = 'UserBadge';

  @override
  Iterable<Object?> serialize(Serializers serializers, UserBadge object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'primary',
      serializers.serialize(object.primary,
          specifiedType: const FullType(bool)),
      'slug',
      serializers.serialize(object.slug, specifiedType: const FullType(String)),
      'link',
      serializers.serialize(object.link, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  UserBadge deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserBadgeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'primary':
          result.primary = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'slug':
          result.slug = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'link':
          result.link = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$UpdatePhotoSerializer implements StructuredSerializer<UpdatePhoto> {
  @override
  final Iterable<Type> types = const [UpdatePhoto, _$UpdatePhoto];
  @override
  final String wireName = 'UpdatePhoto';

  @override
  Iterable<Object?> serialize(Serializers serializers, UpdatePhoto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.showOnProfile;
    if (value != null) {
      result
        ..add('showOnProfile')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tags;
    if (value != null) {
      result
        ..add('tags')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Location)));
    }
    value = object.exif;
    if (value != null) {
      result
        ..add('exif')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Exif)));
    }
    return result;
  }

  @override
  UpdatePhoto deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UpdatePhotoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'showOnProfile':
          result.showOnProfile = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'tags':
          result.tags = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'location':
          result.location.replace(serializers.deserialize(value,
              specifiedType: const FullType(Location))! as Location);
          break;
        case 'exif':
          result.exif.replace(serializers.deserialize(value,
              specifiedType: const FullType(Exif))! as Exif);
          break;
      }
    }

    return result.build();
  }
}

class _$ExifSerializer implements StructuredSerializer<Exif> {
  @override
  final Iterable<Type> types = const [Exif, _$Exif];
  @override
  final String wireName = 'Exif';

  @override
  Iterable<Object?> serialize(Serializers serializers, Exif object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.make;
    if (value != null) {
      result
        ..add('make')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.model;
    if (value != null) {
      result
        ..add('model')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.exposureTime;
    if (value != null) {
      result
        ..add('exposureTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.apertureValue;
    if (value != null) {
      result
        ..add('apertureValue')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.focalLength;
    if (value != null) {
      result
        ..add('focalLength')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isoSpeedRatings;
    if (value != null) {
      result
        ..add('isoSpeedRatings')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Exif deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ExifBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'make':
          result.make = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'model':
          result.model = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'exposureTime':
          result.exposureTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'apertureValue':
          result.apertureValue = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'focalLength':
          result.focalLength = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isoSpeedRatings':
          result.isoSpeedRatings = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$LocationSerializer implements StructuredSerializer<Location> {
  @override
  final Iterable<Type> types = const [Location, _$Location];
  @override
  final String wireName = 'Location';

  @override
  Iterable<Object?> serialize(Serializers serializers, Location object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.latitude;
    if (value != null) {
      result
        ..add('latitude')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.longitude;
    if (value != null) {
      result
        ..add('longitude')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.city;
    if (value != null) {
      result
        ..add('city')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.country;
    if (value != null) {
      result
        ..add('country')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Location deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LocationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'latitude':
          result.latitude = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'longitude':
          result.longitude = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$UpdateUserSerializer implements StructuredSerializer<UpdateUser> {
  @override
  final Iterable<Type> types = const [UpdateUser, _$UpdateUser];
  @override
  final String wireName = 'UpdateUser';

  @override
  Iterable<Object?> serialize(Serializers serializers, UpdateUser object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.username;
    if (value != null) {
      result
        ..add('username')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.firstName;
    if (value != null) {
      result
        ..add('first_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastName;
    if (value != null) {
      result
        ..add('last_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.url;
    if (value != null) {
      result
        ..add('url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bio;
    if (value != null) {
      result
        ..add('bio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.instagramUsername;
    if (value != null) {
      result
        ..add('instagram_username')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  UpdateUser deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UpdateUserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'first_name':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'last_name':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'bio':
          result.bio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'instagram_username':
          result.instagramUsername = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$ProfileImageSerializer implements StructuredSerializer<ProfileImage> {
  @override
  final Iterable<Type> types = const [ProfileImage, _$ProfileImage];
  @override
  final String wireName = 'ProfileImage';

  @override
  Iterable<Object?> serialize(Serializers serializers, ProfileImage object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'small',
      serializers.serialize(object.small,
          specifiedType: const FullType(String)),
      'medium',
      serializers.serialize(object.medium,
          specifiedType: const FullType(String)),
      'large',
      serializers.serialize(object.large,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ProfileImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProfileImageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'small':
          result.small = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'medium':
          result.medium = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'large':
          result.large = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SocialSerializer implements StructuredSerializer<Social> {
  @override
  final Iterable<Type> types = const [Social, _$Social];
  @override
  final String wireName = 'Social';

  @override
  Iterable<Object?> serialize(Serializers serializers, Social object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'instagram_username',
      serializers.serialize(object.instagramUsername,
          specifiedType: const FullType(String)),
      'portfolio_url',
      serializers.serialize(object.portfolioUrl,
          specifiedType: const FullType(String)),
      'twitter_username',
      serializers.serialize(object.twitterUsername,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Social deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SocialBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'instagram_username':
          result.instagramUsername = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'portfolio_url':
          result.portfolioUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'twitter_username':
          result.twitterUsername = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$UserSerializer implements StructuredSerializer<User> {
  @override
  final Iterable<Type> types = const [User, _$User];
  @override
  final String wireName = 'User';

  @override
  Iterable<Object?> serialize(Serializers serializers, User object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'updated_at',
      serializers.serialize(object.updatedAt,
          specifiedType: const FullType(String)),
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'first_name',
      serializers.serialize(object.firstName,
          specifiedType: const FullType(String)),
      'last_name',
      serializers.serialize(object.lastName,
          specifiedType: const FullType(String)),
      'instagram_username',
      serializers.serialize(object.instagramUsername,
          specifiedType: const FullType(String)),
      'twitter_username',
      serializers.serialize(object.twitterUsername,
          specifiedType: const FullType(String)),
      'portfolio_url',
      serializers.serialize(object.portfolioUrl,
          specifiedType: const FullType(String)),
      'bio',
      serializers.serialize(object.bio, specifiedType: const FullType(String)),
      'location',
      serializers.serialize(object.location,
          specifiedType: const FullType(String)),
      'total_likes',
      serializers.serialize(object.totalLikes,
          specifiedType: const FullType(int)),
      'total_photos',
      serializers.serialize(object.totalPhotos,
          specifiedType: const FullType(int)),
      'total_collections',
      serializers.serialize(object.totalCollections,
          specifiedType: const FullType(int)),
      'followed_by_user',
      serializers.serialize(object.followedByUser,
          specifiedType: const FullType(bool)),
      'followers_count',
      serializers.serialize(object.followersCount,
          specifiedType: const FullType(int)),
      'following_count',
      serializers.serialize(object.followingCount,
          specifiedType: const FullType(int)),
      'downloads',
      serializers.serialize(object.downloads,
          specifiedType: const FullType(int)),
      'social',
      serializers.serialize(object.social,
          specifiedType: const FullType(Social)),
      'profile_image',
      serializers.serialize(object.profileImage,
          specifiedType: const FullType(ProfileImage)),
      'badge',
      serializers.serialize(object.badge,
          specifiedType: const FullType(UserBadge)),
      'links',
      serializers.serialize(object.links,
          specifiedType: const FullType(UserLinks)),
    ];

    return result;
  }

  @override
  User deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'first_name':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'last_name':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'instagram_username':
          result.instagramUsername = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'twitter_username':
          result.twitterUsername = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'portfolio_url':
          result.portfolioUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'bio':
          result.bio = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'total_likes':
          result.totalLikes = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'total_photos':
          result.totalPhotos = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'total_collections':
          result.totalCollections = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'followed_by_user':
          result.followedByUser = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'followers_count':
          result.followersCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'following_count':
          result.followingCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'downloads':
          result.downloads = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'social':
          result.social.replace(serializers.deserialize(value,
              specifiedType: const FullType(Social))! as Social);
          break;
        case 'profile_image':
          result.profileImage.replace(serializers.deserialize(value,
              specifiedType: const FullType(ProfileImage))! as ProfileImage);
          break;
        case 'badge':
          result.badge.replace(serializers.deserialize(value,
              specifiedType: const FullType(UserBadge))! as UserBadge);
          break;
        case 'links':
          result.links.replace(serializers.deserialize(value,
              specifiedType: const FullType(UserLinks))! as UserLinks);
          break;
      }
    }

    return result.build();
  }
}

class _$UserLinksSerializer implements StructuredSerializer<UserLinks> {
  @override
  final Iterable<Type> types = const [UserLinks, _$UserLinks];
  @override
  final String wireName = 'UserLinks';

  @override
  Iterable<Object?> serialize(Serializers serializers, UserLinks object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'self',
      serializers.serialize(object.self, specifiedType: const FullType(String)),
      'html',
      serializers.serialize(object.html, specifiedType: const FullType(String)),
      'photos',
      serializers.serialize(object.photos,
          specifiedType: const FullType(String)),
      'likes',
      serializers.serialize(object.likes,
          specifiedType: const FullType(String)),
      'portfolio',
      serializers.serialize(object.portfolio,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  UserLinks deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserLinksBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'self':
          result.self = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'html':
          result.html = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'photos':
          result.photos = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'likes':
          result.likes = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'portfolio':
          result.portfolio = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PhotoLinksSerializer implements StructuredSerializer<PhotoLinks> {
  @override
  final Iterable<Type> types = const [PhotoLinks, _$PhotoLinks];
  @override
  final String wireName = 'PhotoLinks';

  @override
  Iterable<Object?> serialize(Serializers serializers, PhotoLinks object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'self',
      serializers.serialize(object.self, specifiedType: const FullType(String)),
      'html',
      serializers.serialize(object.html, specifiedType: const FullType(String)),
      'download',
      serializers.serialize(object.download,
          specifiedType: const FullType(String)),
      'download_location',
      serializers.serialize(object.downloadLocation,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  PhotoLinks deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PhotoLinksBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'self':
          result.self = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'html':
          result.html = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'download':
          result.download = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'download_location':
          result.downloadLocation = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PhotoUrlsSerializer implements StructuredSerializer<PhotoUrls> {
  @override
  final Iterable<Type> types = const [PhotoUrls, _$PhotoUrls];
  @override
  final String wireName = 'PhotoUrls';

  @override
  Iterable<Object?> serialize(Serializers serializers, PhotoUrls object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'raw',
      serializers.serialize(object.raw, specifiedType: const FullType(String)),
      'full',
      serializers.serialize(object.full, specifiedType: const FullType(String)),
      'regular',
      serializers.serialize(object.regular,
          specifiedType: const FullType(String)),
      'small',
      serializers.serialize(object.small,
          specifiedType: const FullType(String)),
      'thumb',
      serializers.serialize(object.thumb,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  PhotoUrls deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PhotoUrlsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'raw':
          result.raw = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'full':
          result.full = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'regular':
          result.regular = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'small':
          result.small = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'thumb':
          result.thumb = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PhotoSerializer implements StructuredSerializer<Photo> {
  @override
  final Iterable<Type> types = const [Photo, _$Photo];
  @override
  final String wireName = 'Photo';

  @override
  Iterable<Object?> serialize(Serializers serializers, Photo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'created_at',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(String)),
      'updated_at',
      serializers.serialize(object.updatedAt,
          specifiedType: const FullType(String)),
      'width',
      serializers.serialize(object.width, specifiedType: const FullType(int)),
      'height',
      serializers.serialize(object.height, specifiedType: const FullType(int)),
      'color',
      serializers.serialize(object.color,
          specifiedType: const FullType(String)),
      'blur_hash',
      serializers.serialize(object.blurHash,
          specifiedType: const FullType(String)),
      'likes',
      serializers.serialize(object.likes, specifiedType: const FullType(int)),
      'liked_by_user',
      serializers.serialize(object.likedByUser,
          specifiedType: const FullType(bool)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'user',
      serializers.serialize(object.user, specifiedType: const FullType(User)),
      'urls',
      serializers.serialize(object.urls,
          specifiedType: const FullType(PhotoUrls)),
      'links',
      serializers.serialize(object.links,
          specifiedType: const FullType(PhotoLinks)),
    ];

    return result;
  }

  @override
  Photo deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PhotoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'width':
          result.width = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'height':
          result.height = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'blur_hash':
          result.blurHash = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'likes':
          result.likes = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'liked_by_user':
          result.likedByUser = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(User))! as User);
          break;
        case 'urls':
          result.urls.replace(serializers.deserialize(value,
              specifiedType: const FullType(PhotoUrls))! as PhotoUrls);
          break;
        case 'links':
          result.links.replace(serializers.deserialize(value,
              specifiedType: const FullType(PhotoLinks))! as PhotoLinks);
          break;
      }
    }

    return result.build();
  }
}

class _$UserAccessTokenSerializer
    implements StructuredSerializer<UserAccessToken> {
  @override
  final Iterable<Type> types = const [UserAccessToken, _$UserAccessToken];
  @override
  final String wireName = 'UserAccessToken';

  @override
  Iterable<Object?> serialize(Serializers serializers, UserAccessToken object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'accessToken',
      serializers.serialize(object.accessToken,
          specifiedType: const FullType(String)),
      'tokenType',
      serializers.serialize(object.tokenType,
          specifiedType: const FullType(TokenType)),
      'scope',
      serializers.serialize(object.scope,
          specifiedType:
              const FullType(Set, const [const FullType(OAuthScope)])),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(DateTime)),
    ];

    return result;
  }

  @override
  UserAccessToken deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserAccessTokenBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'accessToken':
          result.accessToken = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'tokenType':
          result.tokenType = serializers.deserialize(value,
              specifiedType: const FullType(TokenType))! as TokenType;
          break;
        case 'scope':
          result.scope = serializers.deserialize(value,
                  specifiedType:
                      const FullType(Set, const [const FullType(OAuthScope)]))!
              as Set<OAuthScope>;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime))! as DateTime;
          break;
      }
    }

    return result.build();
  }
}

class _$TrackedPhotoDownloadSerializer
    implements StructuredSerializer<TrackedPhotoDownload> {
  @override
  final Iterable<Type> types = const [
    TrackedPhotoDownload,
    _$TrackedPhotoDownload
  ];
  @override
  final String wireName = 'TrackedPhotoDownload';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, TrackedPhotoDownload object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  TrackedPhotoDownload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TrackedPhotoDownloadBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Portfolio extends Portfolio {
  @override
  final String url;

  factory _$Portfolio([void Function(PortfolioBuilder)? updates]) =>
      (new PortfolioBuilder()..update(updates))._build();

  _$Portfolio._({required this.url}) : super._() {
    BuiltValueNullFieldError.checkNotNull(url, r'Portfolio', 'url');
  }

  @override
  Portfolio rebuild(void Function(PortfolioBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PortfolioBuilder toBuilder() => new PortfolioBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Portfolio && url == other.url;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Portfolio')..add('url', url))
        .toString();
  }
}

class PortfolioBuilder implements Builder<Portfolio, PortfolioBuilder> {
  _$Portfolio? _$v;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  PortfolioBuilder();

  PortfolioBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Portfolio other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Portfolio;
  }

  @override
  void update(void Function(PortfolioBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Portfolio build() => _build();

  _$Portfolio _build() {
    final _$result = _$v ??
        new _$Portfolio._(
            url: BuiltValueNullFieldError.checkNotNull(
                url, r'Portfolio', 'url'));
    replace(_$result);
    return _$result;
  }
}

class _$UserStatistics extends UserStatistics {
  @override
  final String username;
  @override
  final Statistics downloads;
  @override
  final Statistics views;

  factory _$UserStatistics([void Function(UserStatisticsBuilder)? updates]) =>
      (new UserStatisticsBuilder()..update(updates))._build();

  _$UserStatistics._(
      {required this.username, required this.downloads, required this.views})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        username, r'UserStatistics', 'username');
    BuiltValueNullFieldError.checkNotNull(
        downloads, r'UserStatistics', 'downloads');
    BuiltValueNullFieldError.checkNotNull(views, r'UserStatistics', 'views');
  }

  @override
  UserStatistics rebuild(void Function(UserStatisticsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserStatisticsBuilder toBuilder() =>
      new UserStatisticsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserStatistics &&
        username == other.username &&
        downloads == other.downloads &&
        views == other.views;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, downloads.hashCode);
    _$hash = $jc(_$hash, views.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserStatistics')
          ..add('username', username)
          ..add('downloads', downloads)
          ..add('views', views))
        .toString();
  }
}

class UserStatisticsBuilder
    implements Builder<UserStatistics, UserStatisticsBuilder> {
  _$UserStatistics? _$v;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  StatisticsBuilder? _downloads;
  StatisticsBuilder get downloads =>
      _$this._downloads ??= new StatisticsBuilder();
  set downloads(StatisticsBuilder? downloads) => _$this._downloads = downloads;

  StatisticsBuilder? _views;
  StatisticsBuilder get views => _$this._views ??= new StatisticsBuilder();
  set views(StatisticsBuilder? views) => _$this._views = views;

  UserStatisticsBuilder();

  UserStatisticsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _downloads = $v.downloads.toBuilder();
      _views = $v.views.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserStatistics other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserStatistics;
  }

  @override
  void update(void Function(UserStatisticsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserStatistics build() => _build();

  _$UserStatistics _build() {
    _$UserStatistics _$result;
    try {
      _$result = _$v ??
          new _$UserStatistics._(
              username: BuiltValueNullFieldError.checkNotNull(
                  username, r'UserStatistics', 'username'),
              downloads: downloads.build(),
              views: views.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'downloads';
        downloads.build();
        _$failedField = 'views';
        views.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UserStatistics', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Statistics extends Statistics {
  @override
  final int total;
  @override
  final Historical historical;

  factory _$Statistics([void Function(StatisticsBuilder)? updates]) =>
      (new StatisticsBuilder()..update(updates))._build();

  _$Statistics._({required this.total, required this.historical}) : super._() {
    BuiltValueNullFieldError.checkNotNull(total, r'Statistics', 'total');
    BuiltValueNullFieldError.checkNotNull(
        historical, r'Statistics', 'historical');
  }

  @override
  Statistics rebuild(void Function(StatisticsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StatisticsBuilder toBuilder() => new StatisticsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Statistics &&
        total == other.total &&
        historical == other.historical;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, historical.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Statistics')
          ..add('total', total)
          ..add('historical', historical))
        .toString();
  }
}

class StatisticsBuilder implements Builder<Statistics, StatisticsBuilder> {
  _$Statistics? _$v;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  HistoricalBuilder? _historical;
  HistoricalBuilder get historical =>
      _$this._historical ??= new HistoricalBuilder();
  set historical(HistoricalBuilder? historical) =>
      _$this._historical = historical;

  StatisticsBuilder();

  StatisticsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _total = $v.total;
      _historical = $v.historical.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Statistics other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Statistics;
  }

  @override
  void update(void Function(StatisticsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Statistics build() => _build();

  _$Statistics _build() {
    _$Statistics _$result;
    try {
      _$result = _$v ??
          new _$Statistics._(
              total: BuiltValueNullFieldError.checkNotNull(
                  total, r'Statistics', 'total'),
              historical: historical.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'historical';
        historical.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Statistics', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Historical extends Historical {
  @override
  final int change;
  @override
  final int average;
  @override
  final String resolution;
  @override
  final int quantity;
  @override
  final BuiltList<StatValue> values;

  factory _$Historical([void Function(HistoricalBuilder)? updates]) =>
      (new HistoricalBuilder()..update(updates))._build();

  _$Historical._(
      {required this.change,
      required this.average,
      required this.resolution,
      required this.quantity,
      required this.values})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(change, r'Historical', 'change');
    BuiltValueNullFieldError.checkNotNull(average, r'Historical', 'average');
    BuiltValueNullFieldError.checkNotNull(
        resolution, r'Historical', 'resolution');
    BuiltValueNullFieldError.checkNotNull(quantity, r'Historical', 'quantity');
    BuiltValueNullFieldError.checkNotNull(values, r'Historical', 'values');
  }

  @override
  Historical rebuild(void Function(HistoricalBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HistoricalBuilder toBuilder() => new HistoricalBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Historical &&
        change == other.change &&
        average == other.average &&
        resolution == other.resolution &&
        quantity == other.quantity &&
        values == other.values;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, change.hashCode);
    _$hash = $jc(_$hash, average.hashCode);
    _$hash = $jc(_$hash, resolution.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jc(_$hash, values.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Historical')
          ..add('change', change)
          ..add('average', average)
          ..add('resolution', resolution)
          ..add('quantity', quantity)
          ..add('values', values))
        .toString();
  }
}

class HistoricalBuilder implements Builder<Historical, HistoricalBuilder> {
  _$Historical? _$v;

  int? _change;
  int? get change => _$this._change;
  set change(int? change) => _$this._change = change;

  int? _average;
  int? get average => _$this._average;
  set average(int? average) => _$this._average = average;

  String? _resolution;
  String? get resolution => _$this._resolution;
  set resolution(String? resolution) => _$this._resolution = resolution;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  ListBuilder<StatValue>? _values;
  ListBuilder<StatValue> get values =>
      _$this._values ??= new ListBuilder<StatValue>();
  set values(ListBuilder<StatValue>? values) => _$this._values = values;

  HistoricalBuilder();

  HistoricalBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _change = $v.change;
      _average = $v.average;
      _resolution = $v.resolution;
      _quantity = $v.quantity;
      _values = $v.values.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Historical other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Historical;
  }

  @override
  void update(void Function(HistoricalBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Historical build() => _build();

  _$Historical _build() {
    _$Historical _$result;
    try {
      _$result = _$v ??
          new _$Historical._(
              change: BuiltValueNullFieldError.checkNotNull(
                  change, r'Historical', 'change'),
              average: BuiltValueNullFieldError.checkNotNull(
                  average, r'Historical', 'average'),
              resolution: BuiltValueNullFieldError.checkNotNull(
                  resolution, r'Historical', 'resolution'),
              quantity: BuiltValueNullFieldError.checkNotNull(
                  quantity, r'Historical', 'quantity'),
              values: values.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'values';
        values.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Historical', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$StatValue extends StatValue {
  @override
  final DateTime date;
  @override
  final int value;

  factory _$StatValue([void Function(StatValueBuilder)? updates]) =>
      (new StatValueBuilder()..update(updates))._build();

  _$StatValue._({required this.date, required this.value}) : super._() {
    BuiltValueNullFieldError.checkNotNull(date, r'StatValue', 'date');
    BuiltValueNullFieldError.checkNotNull(value, r'StatValue', 'value');
  }

  @override
  StatValue rebuild(void Function(StatValueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StatValueBuilder toBuilder() => new StatValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StatValue && date == other.date && value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StatValue')
          ..add('date', date)
          ..add('value', value))
        .toString();
  }
}

class StatValueBuilder implements Builder<StatValue, StatValueBuilder> {
  _$StatValue? _$v;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  int? _value;
  int? get value => _$this._value;
  set value(int? value) => _$this._value = value;

  StatValueBuilder();

  StatValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StatValue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StatValue;
  }

  @override
  void update(void Function(StatValueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StatValue build() => _build();

  _$StatValue _build() {
    final _$result = _$v ??
        new _$StatValue._(
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'StatValue', 'date'),
            value: BuiltValueNullFieldError.checkNotNull(
                value, r'StatValue', 'value'));
    replace(_$result);
    return _$result;
  }
}

class _$UserBadge extends UserBadge {
  @override
  final String title;
  @override
  final bool primary;
  @override
  final String slug;
  @override
  final String link;

  factory _$UserBadge([void Function(UserBadgeBuilder)? updates]) =>
      (new UserBadgeBuilder()..update(updates))._build();

  _$UserBadge._(
      {required this.title,
      required this.primary,
      required this.slug,
      required this.link})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(title, r'UserBadge', 'title');
    BuiltValueNullFieldError.checkNotNull(primary, r'UserBadge', 'primary');
    BuiltValueNullFieldError.checkNotNull(slug, r'UserBadge', 'slug');
    BuiltValueNullFieldError.checkNotNull(link, r'UserBadge', 'link');
  }

  @override
  UserBadge rebuild(void Function(UserBadgeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserBadgeBuilder toBuilder() => new UserBadgeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserBadge &&
        title == other.title &&
        primary == other.primary &&
        slug == other.slug &&
        link == other.link;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, primary.hashCode);
    _$hash = $jc(_$hash, slug.hashCode);
    _$hash = $jc(_$hash, link.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserBadge')
          ..add('title', title)
          ..add('primary', primary)
          ..add('slug', slug)
          ..add('link', link))
        .toString();
  }
}

class UserBadgeBuilder implements Builder<UserBadge, UserBadgeBuilder> {
  _$UserBadge? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  bool? _primary;
  bool? get primary => _$this._primary;
  set primary(bool? primary) => _$this._primary = primary;

  String? _slug;
  String? get slug => _$this._slug;
  set slug(String? slug) => _$this._slug = slug;

  String? _link;
  String? get link => _$this._link;
  set link(String? link) => _$this._link = link;

  UserBadgeBuilder();

  UserBadgeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _primary = $v.primary;
      _slug = $v.slug;
      _link = $v.link;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserBadge other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserBadge;
  }

  @override
  void update(void Function(UserBadgeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserBadge build() => _build();

  _$UserBadge _build() {
    final _$result = _$v ??
        new _$UserBadge._(
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'UserBadge', 'title'),
            primary: BuiltValueNullFieldError.checkNotNull(
                primary, r'UserBadge', 'primary'),
            slug: BuiltValueNullFieldError.checkNotNull(
                slug, r'UserBadge', 'slug'),
            link: BuiltValueNullFieldError.checkNotNull(
                link, r'UserBadge', 'link'));
    replace(_$result);
    return _$result;
  }
}

class _$UpdatePhoto extends UpdatePhoto {
  @override
  final String? description;
  @override
  final String? showOnProfile;
  @override
  final String? tags;
  @override
  final Location? location;
  @override
  final Exif? exif;

  factory _$UpdatePhoto([void Function(UpdatePhotoBuilder)? updates]) =>
      (new UpdatePhotoBuilder()..update(updates))._build();

  _$UpdatePhoto._(
      {this.description,
      this.showOnProfile,
      this.tags,
      this.location,
      this.exif})
      : super._();

  @override
  UpdatePhoto rebuild(void Function(UpdatePhotoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdatePhotoBuilder toBuilder() => new UpdatePhotoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdatePhoto &&
        description == other.description &&
        showOnProfile == other.showOnProfile &&
        tags == other.tags &&
        location == other.location &&
        exif == other.exif;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, showOnProfile.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, exif.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdatePhoto')
          ..add('description', description)
          ..add('showOnProfile', showOnProfile)
          ..add('tags', tags)
          ..add('location', location)
          ..add('exif', exif))
        .toString();
  }
}

class UpdatePhotoBuilder implements Builder<UpdatePhoto, UpdatePhotoBuilder> {
  _$UpdatePhoto? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _showOnProfile;
  String? get showOnProfile => _$this._showOnProfile;
  set showOnProfile(String? showOnProfile) =>
      _$this._showOnProfile = showOnProfile;

  String? _tags;
  String? get tags => _$this._tags;
  set tags(String? tags) => _$this._tags = tags;

  LocationBuilder? _location;
  LocationBuilder get location => _$this._location ??= new LocationBuilder();
  set location(LocationBuilder? location) => _$this._location = location;

  ExifBuilder? _exif;
  ExifBuilder get exif => _$this._exif ??= new ExifBuilder();
  set exif(ExifBuilder? exif) => _$this._exif = exif;

  UpdatePhotoBuilder();

  UpdatePhotoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _showOnProfile = $v.showOnProfile;
      _tags = $v.tags;
      _location = $v.location?.toBuilder();
      _exif = $v.exif?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdatePhoto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdatePhoto;
  }

  @override
  void update(void Function(UpdatePhotoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdatePhoto build() => _build();

  _$UpdatePhoto _build() {
    _$UpdatePhoto _$result;
    try {
      _$result = _$v ??
          new _$UpdatePhoto._(
              description: description,
              showOnProfile: showOnProfile,
              tags: tags,
              location: _location?.build(),
              exif: _exif?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'location';
        _location?.build();
        _$failedField = 'exif';
        _exif?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdatePhoto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Exif extends Exif {
  @override
  final String? make;
  @override
  final String? model;
  @override
  final String? exposureTime;
  @override
  final String? apertureValue;
  @override
  final String? focalLength;
  @override
  final String? isoSpeedRatings;

  factory _$Exif([void Function(ExifBuilder)? updates]) =>
      (new ExifBuilder()..update(updates))._build();

  _$Exif._(
      {this.make,
      this.model,
      this.exposureTime,
      this.apertureValue,
      this.focalLength,
      this.isoSpeedRatings})
      : super._();

  @override
  Exif rebuild(void Function(ExifBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExifBuilder toBuilder() => new ExifBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Exif &&
        make == other.make &&
        model == other.model &&
        exposureTime == other.exposureTime &&
        apertureValue == other.apertureValue &&
        focalLength == other.focalLength &&
        isoSpeedRatings == other.isoSpeedRatings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, make.hashCode);
    _$hash = $jc(_$hash, model.hashCode);
    _$hash = $jc(_$hash, exposureTime.hashCode);
    _$hash = $jc(_$hash, apertureValue.hashCode);
    _$hash = $jc(_$hash, focalLength.hashCode);
    _$hash = $jc(_$hash, isoSpeedRatings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Exif')
          ..add('make', make)
          ..add('model', model)
          ..add('exposureTime', exposureTime)
          ..add('apertureValue', apertureValue)
          ..add('focalLength', focalLength)
          ..add('isoSpeedRatings', isoSpeedRatings))
        .toString();
  }
}

class ExifBuilder implements Builder<Exif, ExifBuilder> {
  _$Exif? _$v;

  String? _make;
  String? get make => _$this._make;
  set make(String? make) => _$this._make = make;

  String? _model;
  String? get model => _$this._model;
  set model(String? model) => _$this._model = model;

  String? _exposureTime;
  String? get exposureTime => _$this._exposureTime;
  set exposureTime(String? exposureTime) => _$this._exposureTime = exposureTime;

  String? _apertureValue;
  String? get apertureValue => _$this._apertureValue;
  set apertureValue(String? apertureValue) =>
      _$this._apertureValue = apertureValue;

  String? _focalLength;
  String? get focalLength => _$this._focalLength;
  set focalLength(String? focalLength) => _$this._focalLength = focalLength;

  String? _isoSpeedRatings;
  String? get isoSpeedRatings => _$this._isoSpeedRatings;
  set isoSpeedRatings(String? isoSpeedRatings) =>
      _$this._isoSpeedRatings = isoSpeedRatings;

  ExifBuilder();

  ExifBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _make = $v.make;
      _model = $v.model;
      _exposureTime = $v.exposureTime;
      _apertureValue = $v.apertureValue;
      _focalLength = $v.focalLength;
      _isoSpeedRatings = $v.isoSpeedRatings;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Exif other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Exif;
  }

  @override
  void update(void Function(ExifBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Exif build() => _build();

  _$Exif _build() {
    final _$result = _$v ??
        new _$Exif._(
            make: make,
            model: model,
            exposureTime: exposureTime,
            apertureValue: apertureValue,
            focalLength: focalLength,
            isoSpeedRatings: isoSpeedRatings);
    replace(_$result);
    return _$result;
  }
}

class _$Location extends Location {
  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final String? name;
  @override
  final String? city;
  @override
  final String? country;

  factory _$Location([void Function(LocationBuilder)? updates]) =>
      (new LocationBuilder()..update(updates))._build();

  _$Location._(
      {this.latitude, this.longitude, this.name, this.city, this.country})
      : super._();

  @override
  Location rebuild(void Function(LocationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocationBuilder toBuilder() => new LocationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Location &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        name == other.name &&
        city == other.city &&
        country == other.country;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, latitude.hashCode);
    _$hash = $jc(_$hash, longitude.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Location')
          ..add('latitude', latitude)
          ..add('longitude', longitude)
          ..add('name', name)
          ..add('city', city)
          ..add('country', country))
        .toString();
  }
}

class LocationBuilder implements Builder<Location, LocationBuilder> {
  _$Location? _$v;

  double? _latitude;
  double? get latitude => _$this._latitude;
  set latitude(double? latitude) => _$this._latitude = latitude;

  double? _longitude;
  double? get longitude => _$this._longitude;
  set longitude(double? longitude) => _$this._longitude = longitude;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  LocationBuilder();

  LocationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _latitude = $v.latitude;
      _longitude = $v.longitude;
      _name = $v.name;
      _city = $v.city;
      _country = $v.country;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Location other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Location;
  }

  @override
  void update(void Function(LocationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Location build() => _build();

  _$Location _build() {
    final _$result = _$v ??
        new _$Location._(
            latitude: latitude,
            longitude: longitude,
            name: name,
            city: city,
            country: country);
    replace(_$result);
    return _$result;
  }
}

class _$UpdateUser extends UpdateUser {
  @override
  final String? username;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? email;
  @override
  final String? url;
  @override
  final String? location;
  @override
  final String? bio;
  @override
  final String? instagramUsername;

  factory _$UpdateUser([void Function(UpdateUserBuilder)? updates]) =>
      (new UpdateUserBuilder()..update(updates))._build();

  _$UpdateUser._(
      {this.username,
      this.firstName,
      this.lastName,
      this.email,
      this.url,
      this.location,
      this.bio,
      this.instagramUsername})
      : super._();

  @override
  UpdateUser rebuild(void Function(UpdateUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateUserBuilder toBuilder() => new UpdateUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateUser &&
        username == other.username &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        email == other.email &&
        url == other.url &&
        location == other.location &&
        bio == other.bio &&
        instagramUsername == other.instagramUsername;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, bio.hashCode);
    _$hash = $jc(_$hash, instagramUsername.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateUser')
          ..add('username', username)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('email', email)
          ..add('url', url)
          ..add('location', location)
          ..add('bio', bio)
          ..add('instagramUsername', instagramUsername))
        .toString();
  }
}

class UpdateUserBuilder implements Builder<UpdateUser, UpdateUserBuilder> {
  _$UpdateUser? _$v;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  String? _bio;
  String? get bio => _$this._bio;
  set bio(String? bio) => _$this._bio = bio;

  String? _instagramUsername;
  String? get instagramUsername => _$this._instagramUsername;
  set instagramUsername(String? instagramUsername) =>
      _$this._instagramUsername = instagramUsername;

  UpdateUserBuilder();

  UpdateUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _email = $v.email;
      _url = $v.url;
      _location = $v.location;
      _bio = $v.bio;
      _instagramUsername = $v.instagramUsername;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateUser;
  }

  @override
  void update(void Function(UpdateUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateUser build() => _build();

  _$UpdateUser _build() {
    final _$result = _$v ??
        new _$UpdateUser._(
            username: username,
            firstName: firstName,
            lastName: lastName,
            email: email,
            url: url,
            location: location,
            bio: bio,
            instagramUsername: instagramUsername);
    replace(_$result);
    return _$result;
  }
}

class _$ProfileImage extends ProfileImage {
  @override
  final String small;
  @override
  final String medium;
  @override
  final String large;

  factory _$ProfileImage([void Function(ProfileImageBuilder)? updates]) =>
      (new ProfileImageBuilder()..update(updates))._build();

  _$ProfileImage._(
      {required this.small, required this.medium, required this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(small, r'ProfileImage', 'small');
    BuiltValueNullFieldError.checkNotNull(medium, r'ProfileImage', 'medium');
    BuiltValueNullFieldError.checkNotNull(large, r'ProfileImage', 'large');
  }

  @override
  ProfileImage rebuild(void Function(ProfileImageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProfileImageBuilder toBuilder() => new ProfileImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProfileImage &&
        small == other.small &&
        medium == other.medium &&
        large == other.large;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, small.hashCode);
    _$hash = $jc(_$hash, medium.hashCode);
    _$hash = $jc(_$hash, large.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProfileImage')
          ..add('small', small)
          ..add('medium', medium)
          ..add('large', large))
        .toString();
  }
}

class ProfileImageBuilder
    implements Builder<ProfileImage, ProfileImageBuilder> {
  _$ProfileImage? _$v;

  String? _small;
  String? get small => _$this._small;
  set small(String? small) => _$this._small = small;

  String? _medium;
  String? get medium => _$this._medium;
  set medium(String? medium) => _$this._medium = medium;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  ProfileImageBuilder();

  ProfileImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _small = $v.small;
      _medium = $v.medium;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProfileImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProfileImage;
  }

  @override
  void update(void Function(ProfileImageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProfileImage build() => _build();

  _$ProfileImage _build() {
    final _$result = _$v ??
        new _$ProfileImage._(
            small: BuiltValueNullFieldError.checkNotNull(
                small, r'ProfileImage', 'small'),
            medium: BuiltValueNullFieldError.checkNotNull(
                medium, r'ProfileImage', 'medium'),
            large: BuiltValueNullFieldError.checkNotNull(
                large, r'ProfileImage', 'large'));
    replace(_$result);
    return _$result;
  }
}

class _$Social extends Social {
  @override
  final String instagramUsername;
  @override
  final String portfolioUrl;
  @override
  final String twitterUsername;

  factory _$Social([void Function(SocialBuilder)? updates]) =>
      (new SocialBuilder()..update(updates))._build();

  _$Social._(
      {required this.instagramUsername,
      required this.portfolioUrl,
      required this.twitterUsername})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        instagramUsername, r'Social', 'instagramUsername');
    BuiltValueNullFieldError.checkNotNull(
        portfolioUrl, r'Social', 'portfolioUrl');
    BuiltValueNullFieldError.checkNotNull(
        twitterUsername, r'Social', 'twitterUsername');
  }

  @override
  Social rebuild(void Function(SocialBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SocialBuilder toBuilder() => new SocialBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Social &&
        instagramUsername == other.instagramUsername &&
        portfolioUrl == other.portfolioUrl &&
        twitterUsername == other.twitterUsername;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instagramUsername.hashCode);
    _$hash = $jc(_$hash, portfolioUrl.hashCode);
    _$hash = $jc(_$hash, twitterUsername.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Social')
          ..add('instagramUsername', instagramUsername)
          ..add('portfolioUrl', portfolioUrl)
          ..add('twitterUsername', twitterUsername))
        .toString();
  }
}

class SocialBuilder implements Builder<Social, SocialBuilder> {
  _$Social? _$v;

  String? _instagramUsername;
  String? get instagramUsername => _$this._instagramUsername;
  set instagramUsername(String? instagramUsername) =>
      _$this._instagramUsername = instagramUsername;

  String? _portfolioUrl;
  String? get portfolioUrl => _$this._portfolioUrl;
  set portfolioUrl(String? portfolioUrl) => _$this._portfolioUrl = portfolioUrl;

  String? _twitterUsername;
  String? get twitterUsername => _$this._twitterUsername;
  set twitterUsername(String? twitterUsername) =>
      _$this._twitterUsername = twitterUsername;

  SocialBuilder();

  SocialBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instagramUsername = $v.instagramUsername;
      _portfolioUrl = $v.portfolioUrl;
      _twitterUsername = $v.twitterUsername;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Social other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Social;
  }

  @override
  void update(void Function(SocialBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Social build() => _build();

  _$Social _build() {
    final _$result = _$v ??
        new _$Social._(
            instagramUsername: BuiltValueNullFieldError.checkNotNull(
                instagramUsername, r'Social', 'instagramUsername'),
            portfolioUrl: BuiltValueNullFieldError.checkNotNull(
                portfolioUrl, r'Social', 'portfolioUrl'),
            twitterUsername: BuiltValueNullFieldError.checkNotNull(
                twitterUsername, r'Social', 'twitterUsername'));
    replace(_$result);
    return _$result;
  }
}

class _$User extends User {
  @override
  final String id;
  @override
  final String updatedAt;
  @override
  final String username;
  @override
  final String name;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String instagramUsername;
  @override
  final String twitterUsername;
  @override
  final String portfolioUrl;
  @override
  final String bio;
  @override
  final String location;
  @override
  final int totalLikes;
  @override
  final int totalPhotos;
  @override
  final int totalCollections;
  @override
  final bool followedByUser;
  @override
  final int followersCount;
  @override
  final int followingCount;
  @override
  final int downloads;
  @override
  final Social social;
  @override
  final ProfileImage profileImage;
  @override
  final UserBadge badge;
  @override
  final UserLinks links;

  factory _$User([void Function(UserBuilder)? updates]) =>
      (new UserBuilder()..update(updates))._build();

  _$User._(
      {required this.id,
      required this.updatedAt,
      required this.username,
      required this.name,
      required this.firstName,
      required this.lastName,
      required this.instagramUsername,
      required this.twitterUsername,
      required this.portfolioUrl,
      required this.bio,
      required this.location,
      required this.totalLikes,
      required this.totalPhotos,
      required this.totalCollections,
      required this.followedByUser,
      required this.followersCount,
      required this.followingCount,
      required this.downloads,
      required this.social,
      required this.profileImage,
      required this.badge,
      required this.links})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'User', 'id');
    BuiltValueNullFieldError.checkNotNull(updatedAt, r'User', 'updatedAt');
    BuiltValueNullFieldError.checkNotNull(username, r'User', 'username');
    BuiltValueNullFieldError.checkNotNull(name, r'User', 'name');
    BuiltValueNullFieldError.checkNotNull(firstName, r'User', 'firstName');
    BuiltValueNullFieldError.checkNotNull(lastName, r'User', 'lastName');
    BuiltValueNullFieldError.checkNotNull(
        instagramUsername, r'User', 'instagramUsername');
    BuiltValueNullFieldError.checkNotNull(
        twitterUsername, r'User', 'twitterUsername');
    BuiltValueNullFieldError.checkNotNull(
        portfolioUrl, r'User', 'portfolioUrl');
    BuiltValueNullFieldError.checkNotNull(bio, r'User', 'bio');
    BuiltValueNullFieldError.checkNotNull(location, r'User', 'location');
    BuiltValueNullFieldError.checkNotNull(totalLikes, r'User', 'totalLikes');
    BuiltValueNullFieldError.checkNotNull(totalPhotos, r'User', 'totalPhotos');
    BuiltValueNullFieldError.checkNotNull(
        totalCollections, r'User', 'totalCollections');
    BuiltValueNullFieldError.checkNotNull(
        followedByUser, r'User', 'followedByUser');
    BuiltValueNullFieldError.checkNotNull(
        followersCount, r'User', 'followersCount');
    BuiltValueNullFieldError.checkNotNull(
        followingCount, r'User', 'followingCount');
    BuiltValueNullFieldError.checkNotNull(downloads, r'User', 'downloads');
    BuiltValueNullFieldError.checkNotNull(social, r'User', 'social');
    BuiltValueNullFieldError.checkNotNull(
        profileImage, r'User', 'profileImage');
    BuiltValueNullFieldError.checkNotNull(badge, r'User', 'badge');
    BuiltValueNullFieldError.checkNotNull(links, r'User', 'links');
  }

  @override
  User rebuild(void Function(UserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserBuilder toBuilder() => new UserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is User &&
        id == other.id &&
        updatedAt == other.updatedAt &&
        username == other.username &&
        name == other.name &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        instagramUsername == other.instagramUsername &&
        twitterUsername == other.twitterUsername &&
        portfolioUrl == other.portfolioUrl &&
        bio == other.bio &&
        location == other.location &&
        totalLikes == other.totalLikes &&
        totalPhotos == other.totalPhotos &&
        totalCollections == other.totalCollections &&
        followedByUser == other.followedByUser &&
        followersCount == other.followersCount &&
        followingCount == other.followingCount &&
        downloads == other.downloads &&
        social == other.social &&
        profileImage == other.profileImage &&
        badge == other.badge &&
        links == other.links;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, instagramUsername.hashCode);
    _$hash = $jc(_$hash, twitterUsername.hashCode);
    _$hash = $jc(_$hash, portfolioUrl.hashCode);
    _$hash = $jc(_$hash, bio.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, totalLikes.hashCode);
    _$hash = $jc(_$hash, totalPhotos.hashCode);
    _$hash = $jc(_$hash, totalCollections.hashCode);
    _$hash = $jc(_$hash, followedByUser.hashCode);
    _$hash = $jc(_$hash, followersCount.hashCode);
    _$hash = $jc(_$hash, followingCount.hashCode);
    _$hash = $jc(_$hash, downloads.hashCode);
    _$hash = $jc(_$hash, social.hashCode);
    _$hash = $jc(_$hash, profileImage.hashCode);
    _$hash = $jc(_$hash, badge.hashCode);
    _$hash = $jc(_$hash, links.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'User')
          ..add('id', id)
          ..add('updatedAt', updatedAt)
          ..add('username', username)
          ..add('name', name)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('instagramUsername', instagramUsername)
          ..add('twitterUsername', twitterUsername)
          ..add('portfolioUrl', portfolioUrl)
          ..add('bio', bio)
          ..add('location', location)
          ..add('totalLikes', totalLikes)
          ..add('totalPhotos', totalPhotos)
          ..add('totalCollections', totalCollections)
          ..add('followedByUser', followedByUser)
          ..add('followersCount', followersCount)
          ..add('followingCount', followingCount)
          ..add('downloads', downloads)
          ..add('social', social)
          ..add('profileImage', profileImage)
          ..add('badge', badge)
          ..add('links', links))
        .toString();
  }
}

class UserBuilder implements Builder<User, UserBuilder> {
  _$User? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _instagramUsername;
  String? get instagramUsername => _$this._instagramUsername;
  set instagramUsername(String? instagramUsername) =>
      _$this._instagramUsername = instagramUsername;

  String? _twitterUsername;
  String? get twitterUsername => _$this._twitterUsername;
  set twitterUsername(String? twitterUsername) =>
      _$this._twitterUsername = twitterUsername;

  String? _portfolioUrl;
  String? get portfolioUrl => _$this._portfolioUrl;
  set portfolioUrl(String? portfolioUrl) => _$this._portfolioUrl = portfolioUrl;

  String? _bio;
  String? get bio => _$this._bio;
  set bio(String? bio) => _$this._bio = bio;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  int? _totalLikes;
  int? get totalLikes => _$this._totalLikes;
  set totalLikes(int? totalLikes) => _$this._totalLikes = totalLikes;

  int? _totalPhotos;
  int? get totalPhotos => _$this._totalPhotos;
  set totalPhotos(int? totalPhotos) => _$this._totalPhotos = totalPhotos;

  int? _totalCollections;
  int? get totalCollections => _$this._totalCollections;
  set totalCollections(int? totalCollections) =>
      _$this._totalCollections = totalCollections;

  bool? _followedByUser;
  bool? get followedByUser => _$this._followedByUser;
  set followedByUser(bool? followedByUser) =>
      _$this._followedByUser = followedByUser;

  int? _followersCount;
  int? get followersCount => _$this._followersCount;
  set followersCount(int? followersCount) =>
      _$this._followersCount = followersCount;

  int? _followingCount;
  int? get followingCount => _$this._followingCount;
  set followingCount(int? followingCount) =>
      _$this._followingCount = followingCount;

  int? _downloads;
  int? get downloads => _$this._downloads;
  set downloads(int? downloads) => _$this._downloads = downloads;

  SocialBuilder? _social;
  SocialBuilder get social => _$this._social ??= new SocialBuilder();
  set social(SocialBuilder? social) => _$this._social = social;

  ProfileImageBuilder? _profileImage;
  ProfileImageBuilder get profileImage =>
      _$this._profileImage ??= new ProfileImageBuilder();
  set profileImage(ProfileImageBuilder? profileImage) =>
      _$this._profileImage = profileImage;

  UserBadgeBuilder? _badge;
  UserBadgeBuilder get badge => _$this._badge ??= new UserBadgeBuilder();
  set badge(UserBadgeBuilder? badge) => _$this._badge = badge;

  UserLinksBuilder? _links;
  UserLinksBuilder get links => _$this._links ??= new UserLinksBuilder();
  set links(UserLinksBuilder? links) => _$this._links = links;

  UserBuilder();

  UserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _updatedAt = $v.updatedAt;
      _username = $v.username;
      _name = $v.name;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _instagramUsername = $v.instagramUsername;
      _twitterUsername = $v.twitterUsername;
      _portfolioUrl = $v.portfolioUrl;
      _bio = $v.bio;
      _location = $v.location;
      _totalLikes = $v.totalLikes;
      _totalPhotos = $v.totalPhotos;
      _totalCollections = $v.totalCollections;
      _followedByUser = $v.followedByUser;
      _followersCount = $v.followersCount;
      _followingCount = $v.followingCount;
      _downloads = $v.downloads;
      _social = $v.social.toBuilder();
      _profileImage = $v.profileImage.toBuilder();
      _badge = $v.badge.toBuilder();
      _links = $v.links.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(User other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$User;
  }

  @override
  void update(void Function(UserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  User build() => _build();

  _$User _build() {
    _$User _$result;
    try {
      _$result = _$v ??
          new _$User._(
              id: BuiltValueNullFieldError.checkNotNull(id, r'User', 'id'),
              updatedAt: BuiltValueNullFieldError.checkNotNull(
                  updatedAt, r'User', 'updatedAt'),
              username: BuiltValueNullFieldError.checkNotNull(
                  username, r'User', 'username'),
              name:
                  BuiltValueNullFieldError.checkNotNull(name, r'User', 'name'),
              firstName: BuiltValueNullFieldError.checkNotNull(
                  firstName, r'User', 'firstName'),
              lastName: BuiltValueNullFieldError.checkNotNull(
                  lastName, r'User', 'lastName'),
              instagramUsername: BuiltValueNullFieldError.checkNotNull(
                  instagramUsername, r'User', 'instagramUsername'),
              twitterUsername: BuiltValueNullFieldError.checkNotNull(
                  twitterUsername, r'User', 'twitterUsername'),
              portfolioUrl: BuiltValueNullFieldError.checkNotNull(
                  portfolioUrl, r'User', 'portfolioUrl'),
              bio: BuiltValueNullFieldError.checkNotNull(bio, r'User', 'bio'),
              location: BuiltValueNullFieldError.checkNotNull(
                  location, r'User', 'location'),
              totalLikes: BuiltValueNullFieldError.checkNotNull(
                  totalLikes, r'User', 'totalLikes'),
              totalPhotos: BuiltValueNullFieldError.checkNotNull(
                  totalPhotos, r'User', 'totalPhotos'),
              totalCollections: BuiltValueNullFieldError.checkNotNull(totalCollections, r'User', 'totalCollections'),
              followedByUser: BuiltValueNullFieldError.checkNotNull(followedByUser, r'User', 'followedByUser'),
              followersCount: BuiltValueNullFieldError.checkNotNull(followersCount, r'User', 'followersCount'),
              followingCount: BuiltValueNullFieldError.checkNotNull(followingCount, r'User', 'followingCount'),
              downloads: BuiltValueNullFieldError.checkNotNull(downloads, r'User', 'downloads'),
              social: social.build(),
              profileImage: profileImage.build(),
              badge: badge.build(),
              links: links.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'social';
        social.build();
        _$failedField = 'profileImage';
        profileImage.build();
        _$failedField = 'badge';
        badge.build();
        _$failedField = 'links';
        links.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'User', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$UserLinks extends UserLinks {
  @override
  final String self;
  @override
  final String html;
  @override
  final String photos;
  @override
  final String likes;
  @override
  final String portfolio;

  factory _$UserLinks([void Function(UserLinksBuilder)? updates]) =>
      (new UserLinksBuilder()..update(updates))._build();

  _$UserLinks._(
      {required this.self,
      required this.html,
      required this.photos,
      required this.likes,
      required this.portfolio})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(self, r'UserLinks', 'self');
    BuiltValueNullFieldError.checkNotNull(html, r'UserLinks', 'html');
    BuiltValueNullFieldError.checkNotNull(photos, r'UserLinks', 'photos');
    BuiltValueNullFieldError.checkNotNull(likes, r'UserLinks', 'likes');
    BuiltValueNullFieldError.checkNotNull(portfolio, r'UserLinks', 'portfolio');
  }

  @override
  UserLinks rebuild(void Function(UserLinksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserLinksBuilder toBuilder() => new UserLinksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserLinks &&
        self == other.self &&
        html == other.html &&
        photos == other.photos &&
        likes == other.likes &&
        portfolio == other.portfolio;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, self.hashCode);
    _$hash = $jc(_$hash, html.hashCode);
    _$hash = $jc(_$hash, photos.hashCode);
    _$hash = $jc(_$hash, likes.hashCode);
    _$hash = $jc(_$hash, portfolio.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserLinks')
          ..add('self', self)
          ..add('html', html)
          ..add('photos', photos)
          ..add('likes', likes)
          ..add('portfolio', portfolio))
        .toString();
  }
}

class UserLinksBuilder implements Builder<UserLinks, UserLinksBuilder> {
  _$UserLinks? _$v;

  String? _self;
  String? get self => _$this._self;
  set self(String? self) => _$this._self = self;

  String? _html;
  String? get html => _$this._html;
  set html(String? html) => _$this._html = html;

  String? _photos;
  String? get photos => _$this._photos;
  set photos(String? photos) => _$this._photos = photos;

  String? _likes;
  String? get likes => _$this._likes;
  set likes(String? likes) => _$this._likes = likes;

  String? _portfolio;
  String? get portfolio => _$this._portfolio;
  set portfolio(String? portfolio) => _$this._portfolio = portfolio;

  UserLinksBuilder();

  UserLinksBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _self = $v.self;
      _html = $v.html;
      _photos = $v.photos;
      _likes = $v.likes;
      _portfolio = $v.portfolio;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserLinks other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserLinks;
  }

  @override
  void update(void Function(UserLinksBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserLinks build() => _build();

  _$UserLinks _build() {
    final _$result = _$v ??
        new _$UserLinks._(
            self: BuiltValueNullFieldError.checkNotNull(
                self, r'UserLinks', 'self'),
            html: BuiltValueNullFieldError.checkNotNull(
                html, r'UserLinks', 'html'),
            photos: BuiltValueNullFieldError.checkNotNull(
                photos, r'UserLinks', 'photos'),
            likes: BuiltValueNullFieldError.checkNotNull(
                likes, r'UserLinks', 'likes'),
            portfolio: BuiltValueNullFieldError.checkNotNull(
                portfolio, r'UserLinks', 'portfolio'));
    replace(_$result);
    return _$result;
  }
}

class _$PhotoLinks extends PhotoLinks {
  @override
  final String self;
  @override
  final String html;
  @override
  final String download;
  @override
  final String downloadLocation;

  factory _$PhotoLinks([void Function(PhotoLinksBuilder)? updates]) =>
      (new PhotoLinksBuilder()..update(updates))._build();

  _$PhotoLinks._(
      {required this.self,
      required this.html,
      required this.download,
      required this.downloadLocation})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(self, r'PhotoLinks', 'self');
    BuiltValueNullFieldError.checkNotNull(html, r'PhotoLinks', 'html');
    BuiltValueNullFieldError.checkNotNull(download, r'PhotoLinks', 'download');
    BuiltValueNullFieldError.checkNotNull(
        downloadLocation, r'PhotoLinks', 'downloadLocation');
  }

  @override
  PhotoLinks rebuild(void Function(PhotoLinksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PhotoLinksBuilder toBuilder() => new PhotoLinksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PhotoLinks &&
        self == other.self &&
        html == other.html &&
        download == other.download &&
        downloadLocation == other.downloadLocation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, self.hashCode);
    _$hash = $jc(_$hash, html.hashCode);
    _$hash = $jc(_$hash, download.hashCode);
    _$hash = $jc(_$hash, downloadLocation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PhotoLinks')
          ..add('self', self)
          ..add('html', html)
          ..add('download', download)
          ..add('downloadLocation', downloadLocation))
        .toString();
  }
}

class PhotoLinksBuilder implements Builder<PhotoLinks, PhotoLinksBuilder> {
  _$PhotoLinks? _$v;

  String? _self;
  String? get self => _$this._self;
  set self(String? self) => _$this._self = self;

  String? _html;
  String? get html => _$this._html;
  set html(String? html) => _$this._html = html;

  String? _download;
  String? get download => _$this._download;
  set download(String? download) => _$this._download = download;

  String? _downloadLocation;
  String? get downloadLocation => _$this._downloadLocation;
  set downloadLocation(String? downloadLocation) =>
      _$this._downloadLocation = downloadLocation;

  PhotoLinksBuilder();

  PhotoLinksBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _self = $v.self;
      _html = $v.html;
      _download = $v.download;
      _downloadLocation = $v.downloadLocation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PhotoLinks other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PhotoLinks;
  }

  @override
  void update(void Function(PhotoLinksBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PhotoLinks build() => _build();

  _$PhotoLinks _build() {
    final _$result = _$v ??
        new _$PhotoLinks._(
            self: BuiltValueNullFieldError.checkNotNull(
                self, r'PhotoLinks', 'self'),
            html: BuiltValueNullFieldError.checkNotNull(
                html, r'PhotoLinks', 'html'),
            download: BuiltValueNullFieldError.checkNotNull(
                download, r'PhotoLinks', 'download'),
            downloadLocation: BuiltValueNullFieldError.checkNotNull(
                downloadLocation, r'PhotoLinks', 'downloadLocation'));
    replace(_$result);
    return _$result;
  }
}

class _$PhotoUrls extends PhotoUrls {
  @override
  final String raw;
  @override
  final String full;
  @override
  final String regular;
  @override
  final String small;
  @override
  final String thumb;

  factory _$PhotoUrls([void Function(PhotoUrlsBuilder)? updates]) =>
      (new PhotoUrlsBuilder()..update(updates))._build();

  _$PhotoUrls._(
      {required this.raw,
      required this.full,
      required this.regular,
      required this.small,
      required this.thumb})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(raw, r'PhotoUrls', 'raw');
    BuiltValueNullFieldError.checkNotNull(full, r'PhotoUrls', 'full');
    BuiltValueNullFieldError.checkNotNull(regular, r'PhotoUrls', 'regular');
    BuiltValueNullFieldError.checkNotNull(small, r'PhotoUrls', 'small');
    BuiltValueNullFieldError.checkNotNull(thumb, r'PhotoUrls', 'thumb');
  }

  @override
  PhotoUrls rebuild(void Function(PhotoUrlsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PhotoUrlsBuilder toBuilder() => new PhotoUrlsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PhotoUrls &&
        raw == other.raw &&
        full == other.full &&
        regular == other.regular &&
        small == other.small &&
        thumb == other.thumb;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, raw.hashCode);
    _$hash = $jc(_$hash, full.hashCode);
    _$hash = $jc(_$hash, regular.hashCode);
    _$hash = $jc(_$hash, small.hashCode);
    _$hash = $jc(_$hash, thumb.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PhotoUrls')
          ..add('raw', raw)
          ..add('full', full)
          ..add('regular', regular)
          ..add('small', small)
          ..add('thumb', thumb))
        .toString();
  }
}

class PhotoUrlsBuilder implements Builder<PhotoUrls, PhotoUrlsBuilder> {
  _$PhotoUrls? _$v;

  String? _raw;
  String? get raw => _$this._raw;
  set raw(String? raw) => _$this._raw = raw;

  String? _full;
  String? get full => _$this._full;
  set full(String? full) => _$this._full = full;

  String? _regular;
  String? get regular => _$this._regular;
  set regular(String? regular) => _$this._regular = regular;

  String? _small;
  String? get small => _$this._small;
  set small(String? small) => _$this._small = small;

  String? _thumb;
  String? get thumb => _$this._thumb;
  set thumb(String? thumb) => _$this._thumb = thumb;

  PhotoUrlsBuilder();

  PhotoUrlsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _raw = $v.raw;
      _full = $v.full;
      _regular = $v.regular;
      _small = $v.small;
      _thumb = $v.thumb;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PhotoUrls other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PhotoUrls;
  }

  @override
  void update(void Function(PhotoUrlsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PhotoUrls build() => _build();

  _$PhotoUrls _build() {
    final _$result = _$v ??
        new _$PhotoUrls._(
            raw:
                BuiltValueNullFieldError.checkNotNull(raw, r'PhotoUrls', 'raw'),
            full: BuiltValueNullFieldError.checkNotNull(
                full, r'PhotoUrls', 'full'),
            regular: BuiltValueNullFieldError.checkNotNull(
                regular, r'PhotoUrls', 'regular'),
            small: BuiltValueNullFieldError.checkNotNull(
                small, r'PhotoUrls', 'small'),
            thumb: BuiltValueNullFieldError.checkNotNull(
                thumb, r'PhotoUrls', 'thumb'));
    replace(_$result);
    return _$result;
  }
}

class _$Photo extends Photo {
  @override
  final String id;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final int width;
  @override
  final int height;
  @override
  final String color;
  @override
  final String blurHash;
  @override
  final int likes;
  @override
  final bool likedByUser;
  @override
  final String description;
  @override
  final User user;
  @override
  final PhotoUrls urls;
  @override
  final PhotoLinks links;

  factory _$Photo([void Function(PhotoBuilder)? updates]) =>
      (new PhotoBuilder()..update(updates))._build();

  _$Photo._(
      {required this.id,
      required this.createdAt,
      required this.updatedAt,
      required this.width,
      required this.height,
      required this.color,
      required this.blurHash,
      required this.likes,
      required this.likedByUser,
      required this.description,
      required this.user,
      required this.urls,
      required this.links})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'Photo', 'id');
    BuiltValueNullFieldError.checkNotNull(createdAt, r'Photo', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(updatedAt, r'Photo', 'updatedAt');
    BuiltValueNullFieldError.checkNotNull(width, r'Photo', 'width');
    BuiltValueNullFieldError.checkNotNull(height, r'Photo', 'height');
    BuiltValueNullFieldError.checkNotNull(color, r'Photo', 'color');
    BuiltValueNullFieldError.checkNotNull(blurHash, r'Photo', 'blurHash');
    BuiltValueNullFieldError.checkNotNull(likes, r'Photo', 'likes');
    BuiltValueNullFieldError.checkNotNull(likedByUser, r'Photo', 'likedByUser');
    BuiltValueNullFieldError.checkNotNull(description, r'Photo', 'description');
    BuiltValueNullFieldError.checkNotNull(user, r'Photo', 'user');
    BuiltValueNullFieldError.checkNotNull(urls, r'Photo', 'urls');
    BuiltValueNullFieldError.checkNotNull(links, r'Photo', 'links');
  }

  @override
  Photo rebuild(void Function(PhotoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PhotoBuilder toBuilder() => new PhotoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Photo &&
        id == other.id &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        width == other.width &&
        height == other.height &&
        color == other.color &&
        blurHash == other.blurHash &&
        likes == other.likes &&
        likedByUser == other.likedByUser &&
        description == other.description &&
        user == other.user &&
        urls == other.urls &&
        links == other.links;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, width.hashCode);
    _$hash = $jc(_$hash, height.hashCode);
    _$hash = $jc(_$hash, color.hashCode);
    _$hash = $jc(_$hash, blurHash.hashCode);
    _$hash = $jc(_$hash, likes.hashCode);
    _$hash = $jc(_$hash, likedByUser.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, urls.hashCode);
    _$hash = $jc(_$hash, links.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Photo')
          ..add('id', id)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('width', width)
          ..add('height', height)
          ..add('color', color)
          ..add('blurHash', blurHash)
          ..add('likes', likes)
          ..add('likedByUser', likedByUser)
          ..add('description', description)
          ..add('user', user)
          ..add('urls', urls)
          ..add('links', links))
        .toString();
  }
}

class PhotoBuilder implements Builder<Photo, PhotoBuilder> {
  _$Photo? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  int? _width;
  int? get width => _$this._width;
  set width(int? width) => _$this._width = width;

  int? _height;
  int? get height => _$this._height;
  set height(int? height) => _$this._height = height;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  String? _blurHash;
  String? get blurHash => _$this._blurHash;
  set blurHash(String? blurHash) => _$this._blurHash = blurHash;

  int? _likes;
  int? get likes => _$this._likes;
  set likes(int? likes) => _$this._likes = likes;

  bool? _likedByUser;
  bool? get likedByUser => _$this._likedByUser;
  set likedByUser(bool? likedByUser) => _$this._likedByUser = likedByUser;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  UserBuilder? _user;
  UserBuilder get user => _$this._user ??= new UserBuilder();
  set user(UserBuilder? user) => _$this._user = user;

  PhotoUrlsBuilder? _urls;
  PhotoUrlsBuilder get urls => _$this._urls ??= new PhotoUrlsBuilder();
  set urls(PhotoUrlsBuilder? urls) => _$this._urls = urls;

  PhotoLinksBuilder? _links;
  PhotoLinksBuilder get links => _$this._links ??= new PhotoLinksBuilder();
  set links(PhotoLinksBuilder? links) => _$this._links = links;

  PhotoBuilder();

  PhotoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _width = $v.width;
      _height = $v.height;
      _color = $v.color;
      _blurHash = $v.blurHash;
      _likes = $v.likes;
      _likedByUser = $v.likedByUser;
      _description = $v.description;
      _user = $v.user.toBuilder();
      _urls = $v.urls.toBuilder();
      _links = $v.links.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Photo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Photo;
  }

  @override
  void update(void Function(PhotoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Photo build() => _build();

  _$Photo _build() {
    _$Photo _$result;
    try {
      _$result = _$v ??
          new _$Photo._(
              id: BuiltValueNullFieldError.checkNotNull(id, r'Photo', 'id'),
              createdAt: BuiltValueNullFieldError.checkNotNull(
                  createdAt, r'Photo', 'createdAt'),
              updatedAt: BuiltValueNullFieldError.checkNotNull(
                  updatedAt, r'Photo', 'updatedAt'),
              width: BuiltValueNullFieldError.checkNotNull(
                  width, r'Photo', 'width'),
              height: BuiltValueNullFieldError.checkNotNull(
                  height, r'Photo', 'height'),
              color: BuiltValueNullFieldError.checkNotNull(
                  color, r'Photo', 'color'),
              blurHash: BuiltValueNullFieldError.checkNotNull(
                  blurHash, r'Photo', 'blurHash'),
              likes: BuiltValueNullFieldError.checkNotNull(
                  likes, r'Photo', 'likes'),
              likedByUser: BuiltValueNullFieldError.checkNotNull(
                  likedByUser, r'Photo', 'likedByUser'),
              description: BuiltValueNullFieldError.checkNotNull(
                  description, r'Photo', 'description'),
              user: user.build(),
              urls: urls.build(),
              links: links.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
        _$failedField = 'urls';
        urls.build();
        _$failedField = 'links';
        links.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Photo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$UserAccessToken extends UserAccessToken {
  @override
  final String accessToken;
  @override
  final TokenType tokenType;
  @override
  final Set<OAuthScope> scope;
  @override
  final DateTime createdAt;

  factory _$UserAccessToken([void Function(UserAccessTokenBuilder)? updates]) =>
      (new UserAccessTokenBuilder()..update(updates))._build();

  _$UserAccessToken._(
      {required this.accessToken,
      required this.tokenType,
      required this.scope,
      required this.createdAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accessToken, r'UserAccessToken', 'accessToken');
    BuiltValueNullFieldError.checkNotNull(
        tokenType, r'UserAccessToken', 'tokenType');
    BuiltValueNullFieldError.checkNotNull(scope, r'UserAccessToken', 'scope');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'UserAccessToken', 'createdAt');
  }

  @override
  UserAccessToken rebuild(void Function(UserAccessTokenBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserAccessTokenBuilder toBuilder() =>
      new UserAccessTokenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserAccessToken &&
        accessToken == other.accessToken &&
        tokenType == other.tokenType &&
        scope == other.scope &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accessToken.hashCode);
    _$hash = $jc(_$hash, tokenType.hashCode);
    _$hash = $jc(_$hash, scope.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserAccessToken')
          ..add('accessToken', accessToken)
          ..add('tokenType', tokenType)
          ..add('scope', scope)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class UserAccessTokenBuilder
    implements Builder<UserAccessToken, UserAccessTokenBuilder> {
  _$UserAccessToken? _$v;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  TokenType? _tokenType;
  TokenType? get tokenType => _$this._tokenType;
  set tokenType(TokenType? tokenType) => _$this._tokenType = tokenType;

  Set<OAuthScope>? _scope;
  Set<OAuthScope>? get scope => _$this._scope;
  set scope(Set<OAuthScope>? scope) => _$this._scope = scope;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  UserAccessTokenBuilder();

  UserAccessTokenBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessToken = $v.accessToken;
      _tokenType = $v.tokenType;
      _scope = $v.scope;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserAccessToken other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserAccessToken;
  }

  @override
  void update(void Function(UserAccessTokenBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserAccessToken build() => _build();

  _$UserAccessToken _build() {
    final _$result = _$v ??
        new _$UserAccessToken._(
            accessToken: BuiltValueNullFieldError.checkNotNull(
                accessToken, r'UserAccessToken', 'accessToken'),
            tokenType: BuiltValueNullFieldError.checkNotNull(
                tokenType, r'UserAccessToken', 'tokenType'),
            scope: BuiltValueNullFieldError.checkNotNull(
                scope, r'UserAccessToken', 'scope'),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'UserAccessToken', 'createdAt'));
    replace(_$result);
    return _$result;
  }
}

class _$TrackedPhotoDownload extends TrackedPhotoDownload {
  @override
  final String url;

  factory _$TrackedPhotoDownload(
          [void Function(TrackedPhotoDownloadBuilder)? updates]) =>
      (new TrackedPhotoDownloadBuilder()..update(updates))._build();

  _$TrackedPhotoDownload._({required this.url}) : super._() {
    BuiltValueNullFieldError.checkNotNull(url, r'TrackedPhotoDownload', 'url');
  }

  @override
  TrackedPhotoDownload rebuild(
          void Function(TrackedPhotoDownloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrackedPhotoDownloadBuilder toBuilder() =>
      new TrackedPhotoDownloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrackedPhotoDownload && url == other.url;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TrackedPhotoDownload')
          ..add('url', url))
        .toString();
  }
}

class TrackedPhotoDownloadBuilder
    implements Builder<TrackedPhotoDownload, TrackedPhotoDownloadBuilder> {
  _$TrackedPhotoDownload? _$v;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  TrackedPhotoDownloadBuilder();

  TrackedPhotoDownloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrackedPhotoDownload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TrackedPhotoDownload;
  }

  @override
  void update(void Function(TrackedPhotoDownloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TrackedPhotoDownload build() => _build();

  _$TrackedPhotoDownload _build() {
    final _$result = _$v ??
        new _$TrackedPhotoDownload._(
            url: BuiltValueNullFieldError.checkNotNull(
                url, r'TrackedPhotoDownload', 'url'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
