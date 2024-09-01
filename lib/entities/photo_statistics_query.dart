part of unsplash_api;

class PhotoStatisticsQuery {
  StatisticsResolution resolution = StatisticsResolution.days;

  int _quantity = 1;
  int get quantity => _quantity;
  set quantity(int value) => _quantity = min(max(1, value), 30);

  Map<String, String> toQueryParameters() {
    return {
      'resolution': resolution.name,
      'quantity': '$quantity',
    };
  }
}