part of unsplash_api;

@JsonSerializable(createToJson: false)
class ProfileImage {
  ProfileImage({
    required this.small,
    required this.medium,
    required this.large,
  });

  String small;
  String medium;
  String large;

  factory ProfileImage.fromJson(Map<String, Object?> json)
    => _$ProfileImageFromJson(json);
}