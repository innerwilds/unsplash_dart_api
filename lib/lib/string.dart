// extension XString on String {
//   Iterable<String> get words {
//     return RegExp(r'\p{Lu}?\p{Ll}*', unicode: true)
//       .allMatches(this)
//       .map((m) => m[0])
//       .where((s) => s != null && s.isNotEmpty)
//       .cast<String>();
//   }
//
//   /// Converts an string into lower_snake_case case variant.
//   /// Be careful, use it only on strings, where words are separated by any non-letter char
//   /// or/and every words starts with an upper case
//   String toLowerSnakeCase() {
//     return words.map((e) => e.toLowerCase()).join('_');
//   }
// }