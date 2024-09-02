part of unsplash_api;

@unfreezed
class UpdateUser with _$UpdateUser {
  @JsonSerializable(explicitToJson: true)
  factory UpdateUser({
    String? username,
    String? firstName,
    String? lastName,
    String? email,
    String? url,
    String? location,
    String? bio,
    String? instagramUsername,
  }) = _UpdateUser;

  factory UpdateUser.fromJson(Map<String, Object?> json)
    => _$UpdateUserFromJson(json);
}