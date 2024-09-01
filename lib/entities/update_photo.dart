part of unsplash_api;

abstract class UpdatePhoto implements Built<UpdatePhoto, UpdatePhotoBuilder> {
  static Serializer<UpdatePhoto> get serializer => _$updatePhotoSerializer;
  UpdatePhoto._();
  String? get description;
  String? get showOnProfile;
  String? get tags;
  Location? get location;
  Exif? get exif;

  Map<String, String> toQueryParameters() {
    return {
      if (description != null) 'description': description!,
      if (showOnProfile != null) 'showOnProfile': showOnProfile!,
      if (tags != null) 'tags': tags!,

      if (location?.name != null) 'location[name]': location!.name!,
      if (location?.latitude != null) 'location[latitude]': '${location!.latitude!}',
      if (location?.longitude != null) 'location[longitude]': '${location!.longitude!}',
      if (location?.city != null) 'location[city]': location!.city!,
      if (location?.country != null) 'location[country]': location!.country!,

      if (exif?.make != null) 'exif[make]': exif!.make!,
      if (exif?.model != null) 'exif[model]': exif!.model!,
      if (exif?.apertureValue != null) 'exif[apertureValue]': exif!.apertureValue!,
      if (exif?.exposureTime != null) 'exif[exposureTime]': exif!.exposureTime!,
      if (exif?.focalLength != null) 'exif[focalLength]': exif!.focalLength!,
      if (exif?.isoSpeedRatings != null) 'exif[isoSpeedRatings]': exif!.isoSpeedRatings!,
    };
  }

  factory UpdatePhoto([void Function(UpdatePhotoBuilder) updates]) = _$UpdatePhoto;
}