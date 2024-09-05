part of unsplash_api;

@JsonSerializable(createToJson: false)
class PhotoLinks {
  PhotoLinks({
    this.self,
    this.html,
    this.download,
    this.downloadLocation,
  });

  String? self;
  String? html;
  String? download;
  String? downloadLocation;

  factory PhotoLinks.fromJson(Map<String, Object?> json)
    => _$PhotoLinksFromJson(json);
}