part of unsplash_api;

abstract class Portfolio implements Built<Portfolio, PortfolioBuilder> {
  Portfolio._();

  @BuiltValueField(wireName: 'url')
  String get url;

  factory Portfolio([void Function(PortfolioBuilder) updates]) = _$Portfolio;
}