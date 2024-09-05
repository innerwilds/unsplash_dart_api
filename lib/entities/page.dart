part of unsplash_api;

class Page<T, Q> {
  final List<T> items;

  final Q? firstPageQuery;
  final Q? lastPageQuery;
  final Q? prevPageQuery;
  final Q? nextPageQuery;

  Page({
    required this.items,
    this.nextPageQuery,
    this.prevPageQuery,
    this.firstPageQuery,
    this.lastPageQuery,
  });
}
