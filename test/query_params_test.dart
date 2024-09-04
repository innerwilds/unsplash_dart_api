import 'package:unsplash_api/unsplash_api.dart';
import 'package:test/test.dart';

void main() {
  test("#1", () {
    final norm = splashQueryParameters({
      'a': false,
      'b': true,
      'c': 2,
      'd': {
        'e': 3,
        'f': '4',
        'g': {
          'h': [5, '6', true],
          'i': 8,
        },
      },
    });

    expect(norm, equals({
      'a': 'false',
      'b': 'true',
      'c': '2',
      'd[e]': '3',
      'd[f]': '4',
      'd[g][h]': '5,6,true',
      'd[g][i]': '8',
    }));
  });
}
