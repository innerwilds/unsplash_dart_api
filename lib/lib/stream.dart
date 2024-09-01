import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

extension XStream on Stream<List<int>> {
  /// Collects the data of this stream in a [Uint8List].
  Future<Uint8List> toBytes() {
    var completer = Completer<Uint8List>();
    var sink = ByteConversionSink.withCallback((bytes) => completer.complete(Uint8List.fromList(bytes)));
    listen(sink.add,
        onError: completer.completeError,
        onDone: sink.close,
        cancelOnError: true);
    return completer.future;
  }
}