part of unsplash_api;

@JsonSerializable(createToJson: false)
class PhotoLinks {
  const PhotoLinks({
    this.self,
    this.html,
    this.download,
    this.downloadLocation,
  });

  final String? self;
  final String? html;
  final String? download;
  final String? downloadLocation;

  factory PhotoLinks.fromJson(Map<String, Object?> json)
    => _$PhotoLinksFromJson(json);
}