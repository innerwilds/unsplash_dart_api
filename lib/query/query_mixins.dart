part of unsplash_api;

mixin QueryPage {
  int _page = 1;
  set page(int value) => _page = max(1, value);
  int get page => _page;

  int _perPage = 10;
  set perPage(int value) => _perPage = max(1, value);
  int get perPage => _perPage;
}

mixin QueryTerms {
  String query = "";
}

mixin QueryPhotos {
  Orientation? orientation;
  ContentFilter contentFilter = ContentFilter.low;
}