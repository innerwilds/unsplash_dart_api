part of unsplash_api;

final _bytesToJson = json.fuse(utf8);

T Function(Object?) _one<T>(T Function(Map<String, Object?>) fromJson) {
  return (Object? o) => fromJson(o as Map<String, Object?>);
}

List<T> Function(Object?) _list<T>(T Function(Map<String, Object?>) fromJson) {
  return (Object? l) => [
    for (final o in l as Iterable)
      fromJson(o as Map<String, Object?>),
  ];
}

final _fromJsons = {
  UserBadge: _one<UserBadge>(UserBadge.fromJson),
  Photo: _one<Photo>(Photo.fromJson),
  PhotoLinks: _one<PhotoLinks>(PhotoLinks.fromJson),
  PhotoUrls: _one<PhotoUrls>(PhotoUrls.fromJson),
  Portfolio: _one<Portfolio>(Portfolio.fromJson),
  ProfileImage: _one<ProfileImage>(ProfileImage.fromJson),
  Social: _one<Social>(Social.fromJson),
  Statistics: _one<Statistics>(Statistics.fromJson),
  Historical: _one<Historical>(Historical.fromJson),
  StatValue: _one<StatValue>(StatValue.fromJson),
  TrackedDownloadPhoto: _one<TrackedDownloadPhoto>(TrackedDownloadPhoto.fromJson),
  User: _one<User>(User.fromJson),
  UserAccessToken: _one<UserAccessToken>(UserAccessToken.fromJson),
  UserLinks: _one<UserLinks>(UserLinks.fromJson),
  UserStatistics: _one<UserStatistics>(UserStatistics.fromJson),

  List<UserBadge>: _list<UserBadge>(UserBadge.fromJson),
  List<Photo>: _list<Photo>(Photo.fromJson),
  List<PhotoLinks>: _list<PhotoLinks>(PhotoLinks.fromJson),
  List<PhotoUrls>: _list<PhotoUrls>(PhotoUrls.fromJson),
  List<Portfolio>: _list<Portfolio>(Portfolio.fromJson),
  List<ProfileImage>: _list<ProfileImage>(ProfileImage.fromJson),
  List<Social>: _list<Social>(Social.fromJson),
  List<Statistics>: _list<Statistics>(Statistics.fromJson),
  List<Historical>: _list<Historical>(Historical.fromJson),
  List<StatValue>: _list<StatValue>(StatValue.fromJson),
  List<TrackedDownloadPhoto>: _list<TrackedDownloadPhoto>(TrackedDownloadPhoto.fromJson),
  List<User>: _list<User>(User.fromJson),
  List<UserAccessToken>: _list<UserAccessToken>(UserAccessToken.fromJson),
  List<UserLinks>: _list<UserLinks>(UserLinks.fromJson),
  List<UserStatistics>: _list<UserStatistics>(UserStatistics.fromJson),
};

/// This is an internal deserializer. This takes package-wide and exported
/// [_fromJsons] - map of all types with [fromJson] methods: { T: T.fromJson }.
final class BasicDeserializer implements Deserializer {
  @override
  T deserialize<T>(List<int> bytes) {
    assert(T != dynamic, "dynamic used when call deserialize");

    if (T == Null) {
      return null as T;
    }

    final fromJson = _fromJsons[T];

    if (fromJson == null) {
      throw UnimplementedError("There is no fromJson for a type $T");
    }

    Object? obj;

    try {
      obj = _bytesToJson.decode(bytes);
    }
    catch (e) {
      throw SerializationError.invalidData(
        data: (obj != null ? json.encode(obj) : _tryGetStringFromBytes(bytes)).substr(0, 100),
        targetType: T,
        serializer: 'BasicDeserializer',
        originalError: e,
      );
    }

    try {
      return fromJson(obj) as T;
    }
    catch (e) {
      throw SerializationError.invalidSerializer(
        data: (obj != null ? json.encode(obj) : _tryGetStringFromBytes(bytes))
          .substr(0, 100),
        serializer: 'BasicDeserializer',
        targetType: T,
        originalError: e,
      );
    }
  }
  
  String _tryGetStringFromBytes(List<int> bytes) {
    try {
      return utf8.decode(bytes);
    }
    catch (e) {
      return bytes.take(100).join(',');
    }
  }
}

extension on String {
  String substr(int start, int end) {
    return substring(min(length, start), min(end, length));
  }
}