part of unsplash_api;

@JsonSerializable(createToJson: false)
class Portfolio {
  Portfolio({
    required this.url,
  });

  String url;

  factory Portfolio.fromJson(Map<String, Object?> json)
    => _$PortfolioFromJson(json);
}