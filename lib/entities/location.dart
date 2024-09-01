part of unsplash_api;

abstract class Location implements Built<Location, LocationBuilder> {
  static Serializer<Location> get serializer => _$locationSerializer;
  Location._();

  double? get latitude;
  double? get longitude;
  String? get name;
  String? get city;
  String? get country;

  factory Location([void Function(LocationBuilder) updates]) = _$Location;
}