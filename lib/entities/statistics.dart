part of unsplash_api;

abstract class Statistics implements Built<Statistics, StatisticsBuilder> {
  Statistics._();

  factory Statistics([void Function(StatisticsBuilder)? updates]) = _$Statistics;

  @BuiltValueField(wireName: 'total')
  int get total;

  @BuiltValueField(wireName: 'historical')
  Historical get historical;

  static Serializer<Statistics> get serializer => _$statisticsSerializer;
}

abstract class Historical implements Built<Historical, HistoricalBuilder> {
  Historical._();

  factory Historical([void Function(HistoricalBuilder b)]) = _$Historical;

  @BuiltValueField(wireName: 'change')
  int get change;
  @BuiltValueField(wireName: 'average')
  int get average;
  @BuiltValueField(wireName: 'resolution')
  String get resolution;
  @BuiltValueField(wireName: 'quantity')
  int get quantity;
  @BuiltValueField(wireName: 'values')
  BuiltList<StatValue> get values;

  static Serializer<Historical> get serializer => _$historicalSerializer;
}

abstract class StatValue implements Built<StatValue, StatValueBuilder> {
  static Serializer<StatValue> get serializer => _$statValueSerializer;
  StatValue._();

  @BuiltValueField(wireName: 'date')
  DateTime get date;

  @BuiltValueField(wireName: 'value')
  int get value;

  factory StatValue([void Function(StatValueBuilder) updates]) = _$StatValue;
}