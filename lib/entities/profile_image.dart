part of unsplash_api;

@JsonSerializable(createToJson: false)
class ProfileImage {
  const ProfileImage({
    required this.small,
    required this.medium,
    required this.large,
  });

  final String small;
  final String medium;
  final String large;

  factory ProfileImage.fromJson(Map<String, Object?> json)
    => _$ProfileImageFromJson(json);
}