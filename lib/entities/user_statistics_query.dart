part of unsplash_api;

final class UserStatisticsQuery {
  StatisticsResolution resolution = StatisticsResolution.days;
  int _quantity = 30;
  int get quantity => _quantity;
  set quantity(int value) => _quantity = max(1, value);
  Map<String, String> toQueryParameters() {
    return {
      'resolution': resolution.name,
      'quantity': '$quantity',
    };
  }
}