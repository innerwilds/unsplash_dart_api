part of unsplash_api;

// augment class UnsplashApi {
//   // int _rateLimitRemaining = double.maxFinite.toInt();
//   // int _rateLimitLimit = double.maxFinite.toInt();
//
//   augment Future preprocessResponse(http.StreamedResponse response) async {
//     await augmented(response);
//     // _updateLimit(response.headers);
//   }
//
//   /// Updates rate limits we use min() here to avoid race condition.
//   // void _updateLimit(HeadersMap headers) {
//     // todo(update limit using request timestamp)
//     // final xRateLimitLimit = int.tryParse(headers['x-ratelimit-limit'] ?? '');
//     // final xRateLimitRemaining = int.tryParse(headers['x-ratelimit-remaining'] ?? '');
//     //
//     // if (xRateLimitRemaining != null) {
//     //   _rateLimitRemaining = min(xRateLimitRemaining, _rateLimitRemaining);
//     // }
//     //
//     // if (xRateLimitLimit != null) {
//     //   _rateLimitLimit = min(xRateLimitLimit, _rateLimitLimit);
//     // }
//   // }
// }
