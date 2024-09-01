final _separator = RegExp(r'(\s*,\s*)|(\s*;\s*)|(\s+)', caseSensitive: false);
final _word = RegExp(r'\w+', caseSensitive: false);
final _qouttes = RegExp(
  "'"
  '|'
  '"',
  caseSensitive: false,
);

/// Represents "Link: <url>" headers.
class Link {
  final Uri uri;
  final Map<String, String> parameters;

  String? get rel => parameters['rel'];

  const Link(this.uri, [this.parameters = const {}]);

  static List<Link> parse(String value) {
    final pieces = value.trim().split(_separator);

    if (pieces.isEmpty) {
      return [];
    }

    final result = <Link>[];
    final length = pieces.length;

    Uri? uri;
    Map<String, String>? parameters;

    for (int i = 0; i < length; i++) {
      final piece = pieces[i].trim();
      final isLast = i == length - 1;
      final isUri = piece.startsWith('<');
      final isParam = piece.startsWith(_word);

      print('isLast: $isLast; isUri: $isUri; piece: $piece; isParam: $isParam');

      if (isParam) {
        parameters ??= {};

        final firstEqualSign = piece.indexOf('=');
        final key = piece.substring(0, firstEqualSign);
        String value = piece.substring(firstEqualSign + 1);

        if (value.startsWith(_qouttes)) {
          value = value.substring(1, value.length - 1);
        }

        parameters[key] = value;
      }

      if ((isUri || isLast) && uri != null) {
        result.add(Link(uri, parameters ?? const {}));
        uri = null;
        parameters = null;
      }

      if (isUri && uri == null) {
        uri = Uri.parse(piece.substring(1, piece.length - 1));
      }
    }

    return result;
  }

  static List<Link>? tryParse(String value) {
    try {
      return parse(value);
    } catch (e) {
      return null;
    }
  }
}
