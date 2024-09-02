part of unsplash_api;

@freezed
class Portfolio with _$Portfolio {
  const factory Portfolio({
    required String url,
  }) = _Portfolio;

  factory Portfolio.fromJson(Map<String, Object?> json)
    => _$PortfolioFromJson(json);
}