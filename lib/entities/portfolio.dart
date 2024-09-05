part of unsplash_api;

@JsonSerializable(createToJson: false)
class Portfolio {
  const Portfolio({
    required this.url,
  });

  final String url;

  factory Portfolio.fromJson(Map<String, Object?> json)
    => _$PortfolioFromJson(json);
}