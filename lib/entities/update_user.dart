part of unsplash_api;

abstract class UpdateUser implements Built<UpdateUser, UpdateUserBuilder> {
  static Serializer<UpdateUser> get serializer => _$updateUserSerializer;

  UpdateUser._();

  @BuiltValueField(wireName: 'username')
  String? get username;

  @BuiltValueField(wireName: 'first_name')
  String? get firstName;

  @BuiltValueField(wireName: 'last_name')
  String? get lastName;

  @BuiltValueField(wireName: 'email')
  String? get email;

  @BuiltValueField(wireName: 'url')
  String? get url;

  @BuiltValueField(wireName: 'location')
  String? get location;

  @BuiltValueField(wireName: 'bio')
  String? get bio;

  @BuiltValueField(wireName: 'instagram_username')
  String? get instagramUsername;

  Map<String, String> toQueryParameters() {
    return {
      if (username != null) 'username': username!,
      if (firstName != null) 'first_name': firstName!,
      if (lastName != null) 'last_name': lastName!,
      if (email != null) 'email': email!,
      if (url != null) 'url': url!,
      if (location != null) 'location': location!,
      if (bio != null) 'bio': bio!,
      if (instagramUsername != null) 'instagram_username': instagramUsername!,
    };
  }

  factory UpdateUser([void Function(UpdateUserBuilder) updates]) = _$UpdateUser;
}