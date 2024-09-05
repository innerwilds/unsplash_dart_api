part of unsplash_api;

@JsonSerializable(includeIfNull: false)
class UpdateUser {
  @JsonKey(includeFromJson: false)
  String? username;

  @JsonKey(includeFromJson: false)
  String? firstName;

  @JsonKey(includeFromJson: false)
  String? lastName;

  @JsonKey(includeFromJson: false)
  String? email;

  @JsonKey(includeFromJson: false)
  String? url;

  @JsonKey(includeFromJson: false)
  String? location;

  @JsonKey(includeFromJson: false)
  String? bio;

  @JsonKey(includeFromJson: false)
  String? instagramUsername;

  Map<String, Object?> toJson() => _$UpdateUserToJson(this);
}