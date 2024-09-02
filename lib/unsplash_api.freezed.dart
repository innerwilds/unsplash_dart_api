// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unsplash_api.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Portfolio _$PortfolioFromJson(Map<String, dynamic> json) {
  return _Portfolio.fromJson(json);
}

/// @nodoc
mixin _$Portfolio {
  String get url => throw _privateConstructorUsedError;

  /// Serializes this Portfolio to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Portfolio
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PortfolioCopyWith<Portfolio> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PortfolioCopyWith<$Res> {
  factory $PortfolioCopyWith(Portfolio value, $Res Function(Portfolio) then) =
      _$PortfolioCopyWithImpl<$Res, Portfolio>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class _$PortfolioCopyWithImpl<$Res, $Val extends Portfolio>
    implements $PortfolioCopyWith<$Res> {
  _$PortfolioCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Portfolio
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PortfolioImplCopyWith<$Res>
    implements $PortfolioCopyWith<$Res> {
  factory _$$PortfolioImplCopyWith(
          _$PortfolioImpl value, $Res Function(_$PortfolioImpl) then) =
      __$$PortfolioImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$PortfolioImplCopyWithImpl<$Res>
    extends _$PortfolioCopyWithImpl<$Res, _$PortfolioImpl>
    implements _$$PortfolioImplCopyWith<$Res> {
  __$$PortfolioImplCopyWithImpl(
      _$PortfolioImpl _value, $Res Function(_$PortfolioImpl) _then)
      : super(_value, _then);

  /// Create a copy of Portfolio
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$PortfolioImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PortfolioImpl implements _Portfolio {
  const _$PortfolioImpl({required this.url});

  factory _$PortfolioImpl.fromJson(Map<String, dynamic> json) =>
      _$$PortfolioImplFromJson(json);

  @override
  final String url;

  @override
  String toString() {
    return 'Portfolio(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PortfolioImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  /// Create a copy of Portfolio
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PortfolioImplCopyWith<_$PortfolioImpl> get copyWith =>
      __$$PortfolioImplCopyWithImpl<_$PortfolioImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PortfolioImplToJson(
      this,
    );
  }
}

abstract class _Portfolio implements Portfolio {
  const factory _Portfolio({required final String url}) = _$PortfolioImpl;

  factory _Portfolio.fromJson(Map<String, dynamic> json) =
      _$PortfolioImpl.fromJson;

  @override
  String get url;

  /// Create a copy of Portfolio
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PortfolioImplCopyWith<_$PortfolioImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserStatistics _$UserStatisticsFromJson(Map<String, dynamic> json) {
  return _UserStatistics.fromJson(json);
}

/// @nodoc
mixin _$UserStatistics {
  String get username => throw _privateConstructorUsedError;
  Statistics get downloads => throw _privateConstructorUsedError;
  Statistics get views => throw _privateConstructorUsedError;

  /// Serializes this UserStatistics to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserStatistics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserStatisticsCopyWith<UserStatistics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStatisticsCopyWith<$Res> {
  factory $UserStatisticsCopyWith(
          UserStatistics value, $Res Function(UserStatistics) then) =
      _$UserStatisticsCopyWithImpl<$Res, UserStatistics>;
  @useResult
  $Res call({String username, Statistics downloads, Statistics views});

  $StatisticsCopyWith<$Res> get downloads;
  $StatisticsCopyWith<$Res> get views;
}

/// @nodoc
class _$UserStatisticsCopyWithImpl<$Res, $Val extends UserStatistics>
    implements $UserStatisticsCopyWith<$Res> {
  _$UserStatisticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserStatistics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? downloads = null,
    Object? views = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      downloads: null == downloads
          ? _value.downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as Statistics,
      views: null == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as Statistics,
    ) as $Val);
  }

  /// Create a copy of UserStatistics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatisticsCopyWith<$Res> get downloads {
    return $StatisticsCopyWith<$Res>(_value.downloads, (value) {
      return _then(_value.copyWith(downloads: value) as $Val);
    });
  }

  /// Create a copy of UserStatistics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatisticsCopyWith<$Res> get views {
    return $StatisticsCopyWith<$Res>(_value.views, (value) {
      return _then(_value.copyWith(views: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserStatisticsImplCopyWith<$Res>
    implements $UserStatisticsCopyWith<$Res> {
  factory _$$UserStatisticsImplCopyWith(_$UserStatisticsImpl value,
          $Res Function(_$UserStatisticsImpl) then) =
      __$$UserStatisticsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, Statistics downloads, Statistics views});

  @override
  $StatisticsCopyWith<$Res> get downloads;
  @override
  $StatisticsCopyWith<$Res> get views;
}

/// @nodoc
class __$$UserStatisticsImplCopyWithImpl<$Res>
    extends _$UserStatisticsCopyWithImpl<$Res, _$UserStatisticsImpl>
    implements _$$UserStatisticsImplCopyWith<$Res> {
  __$$UserStatisticsImplCopyWithImpl(
      _$UserStatisticsImpl _value, $Res Function(_$UserStatisticsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserStatistics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? downloads = null,
    Object? views = null,
  }) {
    return _then(_$UserStatisticsImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      downloads: null == downloads
          ? _value.downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as Statistics,
      views: null == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as Statistics,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserStatisticsImpl implements _UserStatistics {
  const _$UserStatisticsImpl(
      {required this.username, required this.downloads, required this.views});

  factory _$UserStatisticsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserStatisticsImplFromJson(json);

  @override
  final String username;
  @override
  final Statistics downloads;
  @override
  final Statistics views;

  @override
  String toString() {
    return 'UserStatistics(username: $username, downloads: $downloads, views: $views)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStatisticsImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.downloads, downloads) ||
                other.downloads == downloads) &&
            (identical(other.views, views) || other.views == views));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, username, downloads, views);

  /// Create a copy of UserStatistics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStatisticsImplCopyWith<_$UserStatisticsImpl> get copyWith =>
      __$$UserStatisticsImplCopyWithImpl<_$UserStatisticsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserStatisticsImplToJson(
      this,
    );
  }
}

abstract class _UserStatistics implements UserStatistics {
  const factory _UserStatistics(
      {required final String username,
      required final Statistics downloads,
      required final Statistics views}) = _$UserStatisticsImpl;

  factory _UserStatistics.fromJson(Map<String, dynamic> json) =
      _$UserStatisticsImpl.fromJson;

  @override
  String get username;
  @override
  Statistics get downloads;
  @override
  Statistics get views;

  /// Create a copy of UserStatistics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserStatisticsImplCopyWith<_$UserStatisticsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserStatisticsQuery _$UserStatisticsQueryFromJson(Map<String, dynamic> json) {
  return _UserStatisticsQuery.fromJson(json);
}

/// @nodoc
mixin _$UserStatisticsQuery {
  StatisticsResolution get resolution => throw _privateConstructorUsedError;
  set resolution(StatisticsResolution value) =>
      throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  set quantity(int value) => throw _privateConstructorUsedError;

  /// Serializes this UserStatisticsQuery to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserStatisticsQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserStatisticsQueryCopyWith<UserStatisticsQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStatisticsQueryCopyWith<$Res> {
  factory $UserStatisticsQueryCopyWith(
          UserStatisticsQuery value, $Res Function(UserStatisticsQuery) then) =
      _$UserStatisticsQueryCopyWithImpl<$Res, UserStatisticsQuery>;
  @useResult
  $Res call({StatisticsResolution resolution, int quantity});
}

/// @nodoc
class _$UserStatisticsQueryCopyWithImpl<$Res, $Val extends UserStatisticsQuery>
    implements $UserStatisticsQueryCopyWith<$Res> {
  _$UserStatisticsQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserStatisticsQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resolution = null,
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      resolution: null == resolution
          ? _value.resolution
          : resolution // ignore: cast_nullable_to_non_nullable
              as StatisticsResolution,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserStatisticsQueryImplCopyWith<$Res>
    implements $UserStatisticsQueryCopyWith<$Res> {
  factory _$$UserStatisticsQueryImplCopyWith(_$UserStatisticsQueryImpl value,
          $Res Function(_$UserStatisticsQueryImpl) then) =
      __$$UserStatisticsQueryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StatisticsResolution resolution, int quantity});
}

/// @nodoc
class __$$UserStatisticsQueryImplCopyWithImpl<$Res>
    extends _$UserStatisticsQueryCopyWithImpl<$Res, _$UserStatisticsQueryImpl>
    implements _$$UserStatisticsQueryImplCopyWith<$Res> {
  __$$UserStatisticsQueryImplCopyWithImpl(_$UserStatisticsQueryImpl _value,
      $Res Function(_$UserStatisticsQueryImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserStatisticsQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resolution = null,
    Object? quantity = null,
  }) {
    return _then(_$UserStatisticsQueryImpl(
      resolution: null == resolution
          ? _value.resolution
          : resolution // ignore: cast_nullable_to_non_nullable
              as StatisticsResolution,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$UserStatisticsQueryImpl implements _UserStatisticsQuery {
  _$UserStatisticsQueryImpl(
      {this.resolution = StatisticsResolution.days, this.quantity = 30});

  factory _$UserStatisticsQueryImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserStatisticsQueryImplFromJson(json);

  @override
  @JsonKey()
  StatisticsResolution resolution;
  @override
  @JsonKey()
  int quantity;

  @override
  String toString() {
    return 'UserStatisticsQuery(resolution: $resolution, quantity: $quantity)';
  }

  /// Create a copy of UserStatisticsQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStatisticsQueryImplCopyWith<_$UserStatisticsQueryImpl> get copyWith =>
      __$$UserStatisticsQueryImplCopyWithImpl<_$UserStatisticsQueryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserStatisticsQueryImplToJson(
      this,
    );
  }
}

abstract class _UserStatisticsQuery implements UserStatisticsQuery {
  factory _UserStatisticsQuery(
      {StatisticsResolution resolution,
      int quantity}) = _$UserStatisticsQueryImpl;

  factory _UserStatisticsQuery.fromJson(Map<String, dynamic> json) =
      _$UserStatisticsQueryImpl.fromJson;

  @override
  StatisticsResolution get resolution;
  set resolution(StatisticsResolution value);
  @override
  int get quantity;
  set quantity(int value);

  /// Create a copy of UserStatisticsQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserStatisticsQueryImplCopyWith<_$UserStatisticsQueryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Statistics _$StatisticsFromJson(Map<String, dynamic> json) {
  return _Statistics.fromJson(json);
}

/// @nodoc
mixin _$Statistics {
  int get total => throw _privateConstructorUsedError;
  Historical get historical => throw _privateConstructorUsedError;

  /// Serializes this Statistics to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Statistics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StatisticsCopyWith<Statistics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticsCopyWith<$Res> {
  factory $StatisticsCopyWith(
          Statistics value, $Res Function(Statistics) then) =
      _$StatisticsCopyWithImpl<$Res, Statistics>;
  @useResult
  $Res call({int total, Historical historical});

  $HistoricalCopyWith<$Res> get historical;
}

/// @nodoc
class _$StatisticsCopyWithImpl<$Res, $Val extends Statistics>
    implements $StatisticsCopyWith<$Res> {
  _$StatisticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Statistics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? historical = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      historical: null == historical
          ? _value.historical
          : historical // ignore: cast_nullable_to_non_nullable
              as Historical,
    ) as $Val);
  }

  /// Create a copy of Statistics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HistoricalCopyWith<$Res> get historical {
    return $HistoricalCopyWith<$Res>(_value.historical, (value) {
      return _then(_value.copyWith(historical: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StatisticsImplCopyWith<$Res>
    implements $StatisticsCopyWith<$Res> {
  factory _$$StatisticsImplCopyWith(
          _$StatisticsImpl value, $Res Function(_$StatisticsImpl) then) =
      __$$StatisticsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int total, Historical historical});

  @override
  $HistoricalCopyWith<$Res> get historical;
}

/// @nodoc
class __$$StatisticsImplCopyWithImpl<$Res>
    extends _$StatisticsCopyWithImpl<$Res, _$StatisticsImpl>
    implements _$$StatisticsImplCopyWith<$Res> {
  __$$StatisticsImplCopyWithImpl(
      _$StatisticsImpl _value, $Res Function(_$StatisticsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Statistics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? historical = null,
  }) {
    return _then(_$StatisticsImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      historical: null == historical
          ? _value.historical
          : historical // ignore: cast_nullable_to_non_nullable
              as Historical,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatisticsImpl implements _Statistics {
  const _$StatisticsImpl({required this.total, required this.historical});

  factory _$StatisticsImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatisticsImplFromJson(json);

  @override
  final int total;
  @override
  final Historical historical;

  @override
  String toString() {
    return 'Statistics(total: $total, historical: $historical)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatisticsImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.historical, historical) ||
                other.historical == historical));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, total, historical);

  /// Create a copy of Statistics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatisticsImplCopyWith<_$StatisticsImpl> get copyWith =>
      __$$StatisticsImplCopyWithImpl<_$StatisticsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatisticsImplToJson(
      this,
    );
  }
}

abstract class _Statistics implements Statistics {
  const factory _Statistics(
      {required final int total,
      required final Historical historical}) = _$StatisticsImpl;

  factory _Statistics.fromJson(Map<String, dynamic> json) =
      _$StatisticsImpl.fromJson;

  @override
  int get total;
  @override
  Historical get historical;

  /// Create a copy of Statistics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatisticsImplCopyWith<_$StatisticsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserPhotosQuery _$UserPhotosQueryFromJson(Map<String, dynamic> json) {
  return _UserPhotosQuery.fromJson(json);
}

/// @nodoc
mixin _$UserPhotosQuery {
  int get page => throw _privateConstructorUsedError;
  set page(int value) => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;
  set perPage(int value) => throw _privateConstructorUsedError;
  UserPhotosQueryOrderBy get orderBy => throw _privateConstructorUsedError;
  set orderBy(UserPhotosQueryOrderBy value) =>
      throw _privateConstructorUsedError;

  /// Whether to include stats for each photo
  bool get stats => throw _privateConstructorUsedError;

  /// Whether to include stats for each photo
  set stats(bool value) => throw _privateConstructorUsedError;

  /// Resolutions of included stats
  /// This parameter is omitted if [stats] is false.
  StatisticsResolution get resolution => throw _privateConstructorUsedError;

  /// Resolutions of included stats
  /// This parameter is omitted if [stats] is false.
  set resolution(StatisticsResolution value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'quantity')
  int get statQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'quantity')
  set statQuantity(int value) => throw _privateConstructorUsedError;
  Orientation? get orientation => throw _privateConstructorUsedError;
  set orientation(Orientation? value) => throw _privateConstructorUsedError;

  /// Serializes this UserPhotosQuery to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserPhotosQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserPhotosQueryCopyWith<UserPhotosQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPhotosQueryCopyWith<$Res> {
  factory $UserPhotosQueryCopyWith(
          UserPhotosQuery value, $Res Function(UserPhotosQuery) then) =
      _$UserPhotosQueryCopyWithImpl<$Res, UserPhotosQuery>;
  @useResult
  $Res call(
      {int page,
      int perPage,
      UserPhotosQueryOrderBy orderBy,
      bool stats,
      StatisticsResolution resolution,
      @JsonKey(name: 'quantity') int statQuantity,
      Orientation? orientation});
}

/// @nodoc
class _$UserPhotosQueryCopyWithImpl<$Res, $Val extends UserPhotosQuery>
    implements $UserPhotosQueryCopyWith<$Res> {
  _$UserPhotosQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserPhotosQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? perPage = null,
    Object? orderBy = null,
    Object? stats = null,
    Object? resolution = null,
    Object? statQuantity = null,
    Object? orientation = freezed,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      orderBy: null == orderBy
          ? _value.orderBy
          : orderBy // ignore: cast_nullable_to_non_nullable
              as UserPhotosQueryOrderBy,
      stats: null == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as bool,
      resolution: null == resolution
          ? _value.resolution
          : resolution // ignore: cast_nullable_to_non_nullable
              as StatisticsResolution,
      statQuantity: null == statQuantity
          ? _value.statQuantity
          : statQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      orientation: freezed == orientation
          ? _value.orientation
          : orientation // ignore: cast_nullable_to_non_nullable
              as Orientation?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserPhotosQueryImplCopyWith<$Res>
    implements $UserPhotosQueryCopyWith<$Res> {
  factory _$$UserPhotosQueryImplCopyWith(_$UserPhotosQueryImpl value,
          $Res Function(_$UserPhotosQueryImpl) then) =
      __$$UserPhotosQueryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int page,
      int perPage,
      UserPhotosQueryOrderBy orderBy,
      bool stats,
      StatisticsResolution resolution,
      @JsonKey(name: 'quantity') int statQuantity,
      Orientation? orientation});
}

/// @nodoc
class __$$UserPhotosQueryImplCopyWithImpl<$Res>
    extends _$UserPhotosQueryCopyWithImpl<$Res, _$UserPhotosQueryImpl>
    implements _$$UserPhotosQueryImplCopyWith<$Res> {
  __$$UserPhotosQueryImplCopyWithImpl(
      _$UserPhotosQueryImpl _value, $Res Function(_$UserPhotosQueryImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserPhotosQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? perPage = null,
    Object? orderBy = null,
    Object? stats = null,
    Object? resolution = null,
    Object? statQuantity = null,
    Object? orientation = freezed,
  }) {
    return _then(_$UserPhotosQueryImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      orderBy: null == orderBy
          ? _value.orderBy
          : orderBy // ignore: cast_nullable_to_non_nullable
              as UserPhotosQueryOrderBy,
      stats: null == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as bool,
      resolution: null == resolution
          ? _value.resolution
          : resolution // ignore: cast_nullable_to_non_nullable
              as StatisticsResolution,
      statQuantity: null == statQuantity
          ? _value.statQuantity
          : statQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      orientation: freezed == orientation
          ? _value.orientation
          : orientation // ignore: cast_nullable_to_non_nullable
              as Orientation?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$UserPhotosQueryImpl implements _UserPhotosQuery {
  _$UserPhotosQueryImpl(
      {this.page = 1,
      this.perPage = 10,
      this.orderBy = UserPhotosQueryOrderBy.latest,
      this.stats = false,
      this.resolution = StatisticsResolution.days,
      @JsonKey(name: 'quantity') this.statQuantity = 30,
      this.orientation});

  factory _$UserPhotosQueryImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserPhotosQueryImplFromJson(json);

  @override
  @JsonKey()
  int page;
  @override
  @JsonKey()
  int perPage;
  @override
  @JsonKey()
  UserPhotosQueryOrderBy orderBy;

  /// Whether to include stats for each photo
  @override
  @JsonKey()
  bool stats;

  /// Resolutions of included stats
  /// This parameter is omitted if [stats] is false.
  @override
  @JsonKey()
  StatisticsResolution resolution;
  @override
  @JsonKey(name: 'quantity')
  int statQuantity;
  @override
  Orientation? orientation;

  @override
  String toString() {
    return 'UserPhotosQuery(page: $page, perPage: $perPage, orderBy: $orderBy, stats: $stats, resolution: $resolution, statQuantity: $statQuantity, orientation: $orientation)';
  }

  /// Create a copy of UserPhotosQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserPhotosQueryImplCopyWith<_$UserPhotosQueryImpl> get copyWith =>
      __$$UserPhotosQueryImplCopyWithImpl<_$UserPhotosQueryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserPhotosQueryImplToJson(
      this,
    );
  }
}

abstract class _UserPhotosQuery implements UserPhotosQuery {
  factory _UserPhotosQuery(
      {int page,
      int perPage,
      UserPhotosQueryOrderBy orderBy,
      bool stats,
      StatisticsResolution resolution,
      @JsonKey(name: 'quantity') int statQuantity,
      Orientation? orientation}) = _$UserPhotosQueryImpl;

  factory _UserPhotosQuery.fromJson(Map<String, dynamic> json) =
      _$UserPhotosQueryImpl.fromJson;

  @override
  int get page;
  set page(int value);
  @override
  int get perPage;
  set perPage(int value);
  @override
  UserPhotosQueryOrderBy get orderBy;
  set orderBy(UserPhotosQueryOrderBy value);

  /// Whether to include stats for each photo
  @override
  bool get stats;

  /// Whether to include stats for each photo
  set stats(bool value);

  /// Resolutions of included stats
  /// This parameter is omitted if [stats] is false.
  @override
  StatisticsResolution get resolution;

  /// Resolutions of included stats
  /// This parameter is omitted if [stats] is false.
  set resolution(StatisticsResolution value);
  @override
  @JsonKey(name: 'quantity')
  int get statQuantity;
  @JsonKey(name: 'quantity')
  set statQuantity(int value);
  @override
  Orientation? get orientation;
  set orientation(Orientation? value);

  /// Create a copy of UserPhotosQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserPhotosQueryImplCopyWith<_$UserPhotosQueryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserCollectionsQuery _$UserCollectionsQueryFromJson(Map<String, dynamic> json) {
  return _UserCollectionsQuery.fromJson(json);
}

/// @nodoc
mixin _$UserCollectionsQuery {
  int get page => throw _privateConstructorUsedError;
  set page(int value) => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;
  set perPage(int value) => throw _privateConstructorUsedError;

  /// Serializes this UserCollectionsQuery to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserCollectionsQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCollectionsQueryCopyWith<UserCollectionsQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCollectionsQueryCopyWith<$Res> {
  factory $UserCollectionsQueryCopyWith(UserCollectionsQuery value,
          $Res Function(UserCollectionsQuery) then) =
      _$UserCollectionsQueryCopyWithImpl<$Res, UserCollectionsQuery>;
  @useResult
  $Res call({int page, int perPage});
}

/// @nodoc
class _$UserCollectionsQueryCopyWithImpl<$Res,
        $Val extends UserCollectionsQuery>
    implements $UserCollectionsQueryCopyWith<$Res> {
  _$UserCollectionsQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserCollectionsQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? perPage = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserCollectionsQueryImplCopyWith<$Res>
    implements $UserCollectionsQueryCopyWith<$Res> {
  factory _$$UserCollectionsQueryImplCopyWith(_$UserCollectionsQueryImpl value,
          $Res Function(_$UserCollectionsQueryImpl) then) =
      __$$UserCollectionsQueryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, int perPage});
}

/// @nodoc
class __$$UserCollectionsQueryImplCopyWithImpl<$Res>
    extends _$UserCollectionsQueryCopyWithImpl<$Res, _$UserCollectionsQueryImpl>
    implements _$$UserCollectionsQueryImplCopyWith<$Res> {
  __$$UserCollectionsQueryImplCopyWithImpl(_$UserCollectionsQueryImpl _value,
      $Res Function(_$UserCollectionsQueryImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserCollectionsQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? perPage = null,
  }) {
    return _then(_$UserCollectionsQueryImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$UserCollectionsQueryImpl implements _UserCollectionsQuery {
  _$UserCollectionsQueryImpl({this.page = 1, this.perPage = 10});

  factory _$UserCollectionsQueryImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserCollectionsQueryImplFromJson(json);

  @override
  @JsonKey()
  int page;
  @override
  @JsonKey()
  int perPage;

  @override
  String toString() {
    return 'UserCollectionsQuery(page: $page, perPage: $perPage)';
  }

  /// Create a copy of UserCollectionsQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserCollectionsQueryImplCopyWith<_$UserCollectionsQueryImpl>
      get copyWith =>
          __$$UserCollectionsQueryImplCopyWithImpl<_$UserCollectionsQueryImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserCollectionsQueryImplToJson(
      this,
    );
  }
}

abstract class _UserCollectionsQuery implements UserCollectionsQuery {
  factory _UserCollectionsQuery({int page, int perPage}) =
      _$UserCollectionsQueryImpl;

  factory _UserCollectionsQuery.fromJson(Map<String, dynamic> json) =
      _$UserCollectionsQueryImpl.fromJson;

  @override
  int get page;
  set page(int value);
  @override
  int get perPage;
  set perPage(int value);

  /// Create a copy of UserCollectionsQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserCollectionsQueryImplCopyWith<_$UserCollectionsQueryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UserLikedPhotosQuery _$UserLikedPhotosQueryFromJson(Map<String, dynamic> json) {
  return _UserLikedPhotosQuery.fromJson(json);
}

/// @nodoc
mixin _$UserLikedPhotosQuery {
  int get page => throw _privateConstructorUsedError;
  set page(int value) => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;
  set perPage(int value) => throw _privateConstructorUsedError;
  UserLikedPhotosQueryOrderBy get orderBy => throw _privateConstructorUsedError;
  set orderBy(UserLikedPhotosQueryOrderBy value) =>
      throw _privateConstructorUsedError;
  Orientation? get orientation => throw _privateConstructorUsedError;
  set orientation(Orientation? value) => throw _privateConstructorUsedError;

  /// Serializes this UserLikedPhotosQuery to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserLikedPhotosQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserLikedPhotosQueryCopyWith<UserLikedPhotosQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLikedPhotosQueryCopyWith<$Res> {
  factory $UserLikedPhotosQueryCopyWith(UserLikedPhotosQuery value,
          $Res Function(UserLikedPhotosQuery) then) =
      _$UserLikedPhotosQueryCopyWithImpl<$Res, UserLikedPhotosQuery>;
  @useResult
  $Res call(
      {int page,
      int perPage,
      UserLikedPhotosQueryOrderBy orderBy,
      Orientation? orientation});
}

/// @nodoc
class _$UserLikedPhotosQueryCopyWithImpl<$Res,
        $Val extends UserLikedPhotosQuery>
    implements $UserLikedPhotosQueryCopyWith<$Res> {
  _$UserLikedPhotosQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserLikedPhotosQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? perPage = null,
    Object? orderBy = null,
    Object? orientation = freezed,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      orderBy: null == orderBy
          ? _value.orderBy
          : orderBy // ignore: cast_nullable_to_non_nullable
              as UserLikedPhotosQueryOrderBy,
      orientation: freezed == orientation
          ? _value.orientation
          : orientation // ignore: cast_nullable_to_non_nullable
              as Orientation?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserLikedPhotosQueryImplCopyWith<$Res>
    implements $UserLikedPhotosQueryCopyWith<$Res> {
  factory _$$UserLikedPhotosQueryImplCopyWith(_$UserLikedPhotosQueryImpl value,
          $Res Function(_$UserLikedPhotosQueryImpl) then) =
      __$$UserLikedPhotosQueryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int page,
      int perPage,
      UserLikedPhotosQueryOrderBy orderBy,
      Orientation? orientation});
}

/// @nodoc
class __$$UserLikedPhotosQueryImplCopyWithImpl<$Res>
    extends _$UserLikedPhotosQueryCopyWithImpl<$Res, _$UserLikedPhotosQueryImpl>
    implements _$$UserLikedPhotosQueryImplCopyWith<$Res> {
  __$$UserLikedPhotosQueryImplCopyWithImpl(_$UserLikedPhotosQueryImpl _value,
      $Res Function(_$UserLikedPhotosQueryImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserLikedPhotosQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? perPage = null,
    Object? orderBy = null,
    Object? orientation = freezed,
  }) {
    return _then(_$UserLikedPhotosQueryImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      orderBy: null == orderBy
          ? _value.orderBy
          : orderBy // ignore: cast_nullable_to_non_nullable
              as UserLikedPhotosQueryOrderBy,
      orientation: freezed == orientation
          ? _value.orientation
          : orientation // ignore: cast_nullable_to_non_nullable
              as Orientation?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$UserLikedPhotosQueryImpl implements _UserLikedPhotosQuery {
  _$UserLikedPhotosQueryImpl(
      {this.page = 1,
      this.perPage = 10,
      this.orderBy = UserLikedPhotosQueryOrderBy.latest,
      this.orientation});

  factory _$UserLikedPhotosQueryImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserLikedPhotosQueryImplFromJson(json);

  @override
  @JsonKey()
  int page;
  @override
  @JsonKey()
  int perPage;
  @override
  @JsonKey()
  UserLikedPhotosQueryOrderBy orderBy;
  @override
  Orientation? orientation;

  @override
  String toString() {
    return 'UserLikedPhotosQuery(page: $page, perPage: $perPage, orderBy: $orderBy, orientation: $orientation)';
  }

  /// Create a copy of UserLikedPhotosQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLikedPhotosQueryImplCopyWith<_$UserLikedPhotosQueryImpl>
      get copyWith =>
          __$$UserLikedPhotosQueryImplCopyWithImpl<_$UserLikedPhotosQueryImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserLikedPhotosQueryImplToJson(
      this,
    );
  }
}

abstract class _UserLikedPhotosQuery implements UserLikedPhotosQuery {
  factory _UserLikedPhotosQuery(
      {int page,
      int perPage,
      UserLikedPhotosQueryOrderBy orderBy,
      Orientation? orientation}) = _$UserLikedPhotosQueryImpl;

  factory _UserLikedPhotosQuery.fromJson(Map<String, dynamic> json) =
      _$UserLikedPhotosQueryImpl.fromJson;

  @override
  int get page;
  set page(int value);
  @override
  int get perPage;
  set perPage(int value);
  @override
  UserLikedPhotosQueryOrderBy get orderBy;
  set orderBy(UserLikedPhotosQueryOrderBy value);
  @override
  Orientation? get orientation;
  set orientation(Orientation? value);

  /// Create a copy of UserLikedPhotosQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserLikedPhotosQueryImplCopyWith<_$UserLikedPhotosQueryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PhotoStatisticsQuery _$PhotoStatisticsQueryFromJson(Map<String, dynamic> json) {
  return _PhotoStatisticsQuery.fromJson(json);
}

/// @nodoc
mixin _$PhotoStatisticsQuery {
  int get quantity => throw _privateConstructorUsedError;
  StatisticsResolution get resolution => throw _privateConstructorUsedError;

  /// Serializes this PhotoStatisticsQuery to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PhotoStatisticsQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PhotoStatisticsQueryCopyWith<PhotoStatisticsQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoStatisticsQueryCopyWith<$Res> {
  factory $PhotoStatisticsQueryCopyWith(PhotoStatisticsQuery value,
          $Res Function(PhotoStatisticsQuery) then) =
      _$PhotoStatisticsQueryCopyWithImpl<$Res, PhotoStatisticsQuery>;
  @useResult
  $Res call({int quantity, StatisticsResolution resolution});
}

/// @nodoc
class _$PhotoStatisticsQueryCopyWithImpl<$Res,
        $Val extends PhotoStatisticsQuery>
    implements $PhotoStatisticsQueryCopyWith<$Res> {
  _$PhotoStatisticsQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PhotoStatisticsQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = null,
    Object? resolution = null,
  }) {
    return _then(_value.copyWith(
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      resolution: null == resolution
          ? _value.resolution
          : resolution // ignore: cast_nullable_to_non_nullable
              as StatisticsResolution,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhotoStatisticsQueryImplCopyWith<$Res>
    implements $PhotoStatisticsQueryCopyWith<$Res> {
  factory _$$PhotoStatisticsQueryImplCopyWith(_$PhotoStatisticsQueryImpl value,
          $Res Function(_$PhotoStatisticsQueryImpl) then) =
      __$$PhotoStatisticsQueryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int quantity, StatisticsResolution resolution});
}

/// @nodoc
class __$$PhotoStatisticsQueryImplCopyWithImpl<$Res>
    extends _$PhotoStatisticsQueryCopyWithImpl<$Res, _$PhotoStatisticsQueryImpl>
    implements _$$PhotoStatisticsQueryImplCopyWith<$Res> {
  __$$PhotoStatisticsQueryImplCopyWithImpl(_$PhotoStatisticsQueryImpl _value,
      $Res Function(_$PhotoStatisticsQueryImpl) _then)
      : super(_value, _then);

  /// Create a copy of PhotoStatisticsQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = null,
    Object? resolution = null,
  }) {
    return _then(_$PhotoStatisticsQueryImpl(
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      resolution: null == resolution
          ? _value.resolution
          : resolution // ignore: cast_nullable_to_non_nullable
              as StatisticsResolution,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PhotoStatisticsQueryImpl implements _PhotoStatisticsQuery {
  const _$PhotoStatisticsQueryImpl(
      {this.quantity = 1, this.resolution = StatisticsResolution.days});

  factory _$PhotoStatisticsQueryImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhotoStatisticsQueryImplFromJson(json);

  @override
  @JsonKey()
  final int quantity;
  @override
  @JsonKey()
  final StatisticsResolution resolution;

  @override
  String toString() {
    return 'PhotoStatisticsQuery(quantity: $quantity, resolution: $resolution)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoStatisticsQueryImpl &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.resolution, resolution) ||
                other.resolution == resolution));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, quantity, resolution);

  /// Create a copy of PhotoStatisticsQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoStatisticsQueryImplCopyWith<_$PhotoStatisticsQueryImpl>
      get copyWith =>
          __$$PhotoStatisticsQueryImplCopyWithImpl<_$PhotoStatisticsQueryImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhotoStatisticsQueryImplToJson(
      this,
    );
  }
}

abstract class _PhotoStatisticsQuery implements PhotoStatisticsQuery {
  const factory _PhotoStatisticsQuery(
      {final int quantity,
      final StatisticsResolution resolution}) = _$PhotoStatisticsQueryImpl;

  factory _PhotoStatisticsQuery.fromJson(Map<String, dynamic> json) =
      _$PhotoStatisticsQueryImpl.fromJson;

  @override
  int get quantity;
  @override
  StatisticsResolution get resolution;

  /// Create a copy of PhotoStatisticsQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhotoStatisticsQueryImplCopyWith<_$PhotoStatisticsQueryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RandomPhotoQuery _$RandomPhotoQueryFromJson(Map<String, dynamic> json) {
  return _RandomPhotoQuery.fromJson(json);
}

/// @nodoc
mixin _$RandomPhotoQuery {
  /// Public collection ID(‘s) to filter selection
  List<String>? get collections => throw _privateConstructorUsedError;

  /// Public topic ID(‘s) to filter selection
  List<String>? get topics => throw _privateConstructorUsedError;

  ///	Limit selection to a single user.
  String? get username => throw _privateConstructorUsedError;

  /// Limit selection to photos matching a search term.
  String? get query => throw _privateConstructorUsedError;

  /// Filter by photo orientation.
  Orientation? get orientation => throw _privateConstructorUsedError;

  /// Limit results by [content safety](https://unsplash.com/documentation#content-safety)
  ContentFilter get contentFilter => throw _privateConstructorUsedError;

  /// The number of photos to return.
  /// Min: 1, Max: 30
  int get count => throw _privateConstructorUsedError;

  /// Serializes this RandomPhotoQuery to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RandomPhotoQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RandomPhotoQueryCopyWith<RandomPhotoQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RandomPhotoQueryCopyWith<$Res> {
  factory $RandomPhotoQueryCopyWith(
          RandomPhotoQuery value, $Res Function(RandomPhotoQuery) then) =
      _$RandomPhotoQueryCopyWithImpl<$Res, RandomPhotoQuery>;
  @useResult
  $Res call(
      {List<String>? collections,
      List<String>? topics,
      String? username,
      String? query,
      Orientation? orientation,
      ContentFilter contentFilter,
      int count});
}

/// @nodoc
class _$RandomPhotoQueryCopyWithImpl<$Res, $Val extends RandomPhotoQuery>
    implements $RandomPhotoQueryCopyWith<$Res> {
  _$RandomPhotoQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RandomPhotoQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collections = freezed,
    Object? topics = freezed,
    Object? username = freezed,
    Object? query = freezed,
    Object? orientation = freezed,
    Object? contentFilter = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      collections: freezed == collections
          ? _value.collections
          : collections // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      topics: freezed == topics
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      orientation: freezed == orientation
          ? _value.orientation
          : orientation // ignore: cast_nullable_to_non_nullable
              as Orientation?,
      contentFilter: null == contentFilter
          ? _value.contentFilter
          : contentFilter // ignore: cast_nullable_to_non_nullable
              as ContentFilter,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RandomPhotoQueryImplCopyWith<$Res>
    implements $RandomPhotoQueryCopyWith<$Res> {
  factory _$$RandomPhotoQueryImplCopyWith(_$RandomPhotoQueryImpl value,
          $Res Function(_$RandomPhotoQueryImpl) then) =
      __$$RandomPhotoQueryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String>? collections,
      List<String>? topics,
      String? username,
      String? query,
      Orientation? orientation,
      ContentFilter contentFilter,
      int count});
}

/// @nodoc
class __$$RandomPhotoQueryImplCopyWithImpl<$Res>
    extends _$RandomPhotoQueryCopyWithImpl<$Res, _$RandomPhotoQueryImpl>
    implements _$$RandomPhotoQueryImplCopyWith<$Res> {
  __$$RandomPhotoQueryImplCopyWithImpl(_$RandomPhotoQueryImpl _value,
      $Res Function(_$RandomPhotoQueryImpl) _then)
      : super(_value, _then);

  /// Create a copy of RandomPhotoQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collections = freezed,
    Object? topics = freezed,
    Object? username = freezed,
    Object? query = freezed,
    Object? orientation = freezed,
    Object? contentFilter = null,
    Object? count = null,
  }) {
    return _then(_$RandomPhotoQueryImpl(
      collections: freezed == collections
          ? _value._collections
          : collections // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      topics: freezed == topics
          ? _value._topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      orientation: freezed == orientation
          ? _value.orientation
          : orientation // ignore: cast_nullable_to_non_nullable
              as Orientation?,
      contentFilter: null == contentFilter
          ? _value.contentFilter
          : contentFilter // ignore: cast_nullable_to_non_nullable
              as ContentFilter,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RandomPhotoQueryImpl implements _RandomPhotoQuery {
  const _$RandomPhotoQueryImpl(
      {final List<String>? collections,
      final List<String>? topics,
      this.username,
      this.query,
      this.orientation,
      this.contentFilter = ContentFilter.low,
      this.count = 30})
      : _collections = collections,
        _topics = topics;

  factory _$RandomPhotoQueryImpl.fromJson(Map<String, dynamic> json) =>
      _$$RandomPhotoQueryImplFromJson(json);

  /// Public collection ID(‘s) to filter selection
  final List<String>? _collections;

  /// Public collection ID(‘s) to filter selection
  @override
  List<String>? get collections {
    final value = _collections;
    if (value == null) return null;
    if (_collections is EqualUnmodifiableListView) return _collections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Public topic ID(‘s) to filter selection
  final List<String>? _topics;

  /// Public topic ID(‘s) to filter selection
  @override
  List<String>? get topics {
    final value = _topics;
    if (value == null) return null;
    if (_topics is EqualUnmodifiableListView) return _topics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  ///	Limit selection to a single user.
  @override
  final String? username;

  /// Limit selection to photos matching a search term.
  @override
  final String? query;

  /// Filter by photo orientation.
  @override
  final Orientation? orientation;

  /// Limit results by [content safety](https://unsplash.com/documentation#content-safety)
  @override
  @JsonKey()
  final ContentFilter contentFilter;

  /// The number of photos to return.
  /// Min: 1, Max: 30
  @override
  @JsonKey()
  final int count;

  @override
  String toString() {
    return 'RandomPhotoQuery(collections: $collections, topics: $topics, username: $username, query: $query, orientation: $orientation, contentFilter: $contentFilter, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RandomPhotoQueryImpl &&
            const DeepCollectionEquality()
                .equals(other._collections, _collections) &&
            const DeepCollectionEquality().equals(other._topics, _topics) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.orientation, orientation) ||
                other.orientation == orientation) &&
            (identical(other.contentFilter, contentFilter) ||
                other.contentFilter == contentFilter) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_collections),
      const DeepCollectionEquality().hash(_topics),
      username,
      query,
      orientation,
      contentFilter,
      count);

  /// Create a copy of RandomPhotoQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RandomPhotoQueryImplCopyWith<_$RandomPhotoQueryImpl> get copyWith =>
      __$$RandomPhotoQueryImplCopyWithImpl<_$RandomPhotoQueryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RandomPhotoQueryImplToJson(
      this,
    );
  }
}

abstract class _RandomPhotoQuery implements RandomPhotoQuery {
  const factory _RandomPhotoQuery(
      {final List<String>? collections,
      final List<String>? topics,
      final String? username,
      final String? query,
      final Orientation? orientation,
      final ContentFilter contentFilter,
      final int count}) = _$RandomPhotoQueryImpl;

  factory _RandomPhotoQuery.fromJson(Map<String, dynamic> json) =
      _$RandomPhotoQueryImpl.fromJson;

  /// Public collection ID(‘s) to filter selection
  @override
  List<String>? get collections;

  /// Public topic ID(‘s) to filter selection
  @override
  List<String>? get topics;

  ///	Limit selection to a single user.
  @override
  String? get username;

  /// Limit selection to photos matching a search term.
  @override
  String? get query;

  /// Filter by photo orientation.
  @override
  Orientation? get orientation;

  /// Limit results by [content safety](https://unsplash.com/documentation#content-safety)
  @override
  ContentFilter get contentFilter;

  /// The number of photos to return.
  /// Min: 1, Max: 30
  @override
  int get count;

  /// Create a copy of RandomPhotoQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RandomPhotoQueryImplCopyWith<_$RandomPhotoQueryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PhotosQuery _$PhotosQueryFromJson(Map<String, dynamic> json) {
  return _PhotosQuery.fromJson(json);
}

/// @nodoc
mixin _$PhotosQuery {
  int get page => throw _privateConstructorUsedError;
  set page(int value) => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;
  set perPage(int value) => throw _privateConstructorUsedError;
  OrderByPhotos get orderBy => throw _privateConstructorUsedError;
  set orderBy(OrderByPhotos value) => throw _privateConstructorUsedError;

  /// Serializes this PhotosQuery to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PhotosQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PhotosQueryCopyWith<PhotosQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotosQueryCopyWith<$Res> {
  factory $PhotosQueryCopyWith(
          PhotosQuery value, $Res Function(PhotosQuery) then) =
      _$PhotosQueryCopyWithImpl<$Res, PhotosQuery>;
  @useResult
  $Res call({int page, int perPage, OrderByPhotos orderBy});
}

/// @nodoc
class _$PhotosQueryCopyWithImpl<$Res, $Val extends PhotosQuery>
    implements $PhotosQueryCopyWith<$Res> {
  _$PhotosQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PhotosQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? perPage = null,
    Object? orderBy = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      orderBy: null == orderBy
          ? _value.orderBy
          : orderBy // ignore: cast_nullable_to_non_nullable
              as OrderByPhotos,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhotosQueryImplCopyWith<$Res>
    implements $PhotosQueryCopyWith<$Res> {
  factory _$$PhotosQueryImplCopyWith(
          _$PhotosQueryImpl value, $Res Function(_$PhotosQueryImpl) then) =
      __$$PhotosQueryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, int perPage, OrderByPhotos orderBy});
}

/// @nodoc
class __$$PhotosQueryImplCopyWithImpl<$Res>
    extends _$PhotosQueryCopyWithImpl<$Res, _$PhotosQueryImpl>
    implements _$$PhotosQueryImplCopyWith<$Res> {
  __$$PhotosQueryImplCopyWithImpl(
      _$PhotosQueryImpl _value, $Res Function(_$PhotosQueryImpl) _then)
      : super(_value, _then);

  /// Create a copy of PhotosQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? perPage = null,
    Object? orderBy = null,
  }) {
    return _then(_$PhotosQueryImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      orderBy: null == orderBy
          ? _value.orderBy
          : orderBy // ignore: cast_nullable_to_non_nullable
              as OrderByPhotos,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$PhotosQueryImpl implements _PhotosQuery {
  _$PhotosQueryImpl(
      {this.page = 1, this.perPage = 10, this.orderBy = OrderByPhotos.latest});

  factory _$PhotosQueryImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhotosQueryImplFromJson(json);

  @override
  @JsonKey()
  int page;
  @override
  @JsonKey()
  int perPage;
  @override
  @JsonKey()
  OrderByPhotos orderBy;

  @override
  String toString() {
    return 'PhotosQuery(page: $page, perPage: $perPage, orderBy: $orderBy)';
  }

  /// Create a copy of PhotosQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotosQueryImplCopyWith<_$PhotosQueryImpl> get copyWith =>
      __$$PhotosQueryImplCopyWithImpl<_$PhotosQueryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhotosQueryImplToJson(
      this,
    );
  }
}

abstract class _PhotosQuery implements PhotosQuery {
  factory _PhotosQuery({int page, int perPage, OrderByPhotos orderBy}) =
      _$PhotosQueryImpl;

  factory _PhotosQuery.fromJson(Map<String, dynamic> json) =
      _$PhotosQueryImpl.fromJson;

  @override
  int get page;
  set page(int value);
  @override
  int get perPage;
  set perPage(int value);
  @override
  OrderByPhotos get orderBy;
  set orderBy(OrderByPhotos value);

  /// Create a copy of PhotosQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhotosQueryImplCopyWith<_$PhotosQueryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserBadge _$UserBadgeFromJson(Map<String, dynamic> json) {
  return _UserBadge.fromJson(json);
}

/// @nodoc
mixin _$UserBadge {
  String? get title => throw _privateConstructorUsedError;
  bool? get primary => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;

  /// Serializes this UserBadge to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserBadge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserBadgeCopyWith<UserBadge> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBadgeCopyWith<$Res> {
  factory $UserBadgeCopyWith(UserBadge value, $Res Function(UserBadge) then) =
      _$UserBadgeCopyWithImpl<$Res, UserBadge>;
  @useResult
  $Res call({String? title, bool? primary, String? slug, String? link});
}

/// @nodoc
class _$UserBadgeCopyWithImpl<$Res, $Val extends UserBadge>
    implements $UserBadgeCopyWith<$Res> {
  _$UserBadgeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserBadge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? primary = freezed,
    Object? slug = freezed,
    Object? link = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      primary: freezed == primary
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as bool?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserBadgeImplCopyWith<$Res>
    implements $UserBadgeCopyWith<$Res> {
  factory _$$UserBadgeImplCopyWith(
          _$UserBadgeImpl value, $Res Function(_$UserBadgeImpl) then) =
      __$$UserBadgeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, bool? primary, String? slug, String? link});
}

/// @nodoc
class __$$UserBadgeImplCopyWithImpl<$Res>
    extends _$UserBadgeCopyWithImpl<$Res, _$UserBadgeImpl>
    implements _$$UserBadgeImplCopyWith<$Res> {
  __$$UserBadgeImplCopyWithImpl(
      _$UserBadgeImpl _value, $Res Function(_$UserBadgeImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserBadge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? primary = freezed,
    Object? slug = freezed,
    Object? link = freezed,
  }) {
    return _then(_$UserBadgeImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      primary: freezed == primary
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as bool?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserBadgeImpl implements _UserBadge {
  _$UserBadgeImpl({this.title, this.primary, this.slug, this.link});

  factory _$UserBadgeImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserBadgeImplFromJson(json);

  @override
  final String? title;
  @override
  final bool? primary;
  @override
  final String? slug;
  @override
  final String? link;

  @override
  String toString() {
    return 'UserBadge(title: $title, primary: $primary, slug: $slug, link: $link)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserBadgeImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.primary, primary) || other.primary == primary) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.link, link) || other.link == link));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, primary, slug, link);

  /// Create a copy of UserBadge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserBadgeImplCopyWith<_$UserBadgeImpl> get copyWith =>
      __$$UserBadgeImplCopyWithImpl<_$UserBadgeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserBadgeImplToJson(
      this,
    );
  }
}

abstract class _UserBadge implements UserBadge {
  factory _UserBadge(
      {final String? title,
      final bool? primary,
      final String? slug,
      final String? link}) = _$UserBadgeImpl;

  factory _UserBadge.fromJson(Map<String, dynamic> json) =
      _$UserBadgeImpl.fromJson;

  @override
  String? get title;
  @override
  bool? get primary;
  @override
  String? get slug;
  @override
  String? get link;

  /// Create a copy of UserBadge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserBadgeImplCopyWith<_$UserBadgeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdatePhoto _$UpdatePhotoFromJson(Map<String, dynamic> json) {
  return _UpdatePhoto.fromJson(json);
}

/// @nodoc
mixin _$UpdatePhoto {
  String? get description => throw _privateConstructorUsedError;
  set description(String? value) => throw _privateConstructorUsedError;
  String? get showOnProfile => throw _privateConstructorUsedError;
  set showOnProfile(String? value) => throw _privateConstructorUsedError;
  String? get tags => throw _privateConstructorUsedError;
  set tags(String? value) => throw _privateConstructorUsedError;
  Location? get location => throw _privateConstructorUsedError;
  set location(Location? value) => throw _privateConstructorUsedError;
  Exif? get exif => throw _privateConstructorUsedError;
  set exif(Exif? value) => throw _privateConstructorUsedError;

  /// Serializes this UpdatePhoto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdatePhoto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdatePhotoCopyWith<UpdatePhoto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatePhotoCopyWith<$Res> {
  factory $UpdatePhotoCopyWith(
          UpdatePhoto value, $Res Function(UpdatePhoto) then) =
      _$UpdatePhotoCopyWithImpl<$Res, UpdatePhoto>;
  @useResult
  $Res call(
      {String? description,
      String? showOnProfile,
      String? tags,
      Location? location,
      Exif? exif});

  $LocationCopyWith<$Res>? get location;
  $ExifCopyWith<$Res>? get exif;
}

/// @nodoc
class _$UpdatePhotoCopyWithImpl<$Res, $Val extends UpdatePhoto>
    implements $UpdatePhotoCopyWith<$Res> {
  _$UpdatePhotoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdatePhoto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? showOnProfile = freezed,
    Object? tags = freezed,
    Object? location = freezed,
    Object? exif = freezed,
  }) {
    return _then(_value.copyWith(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      showOnProfile: freezed == showOnProfile
          ? _value.showOnProfile
          : showOnProfile // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      exif: freezed == exif
          ? _value.exif
          : exif // ignore: cast_nullable_to_non_nullable
              as Exif?,
    ) as $Val);
  }

  /// Create a copy of UpdatePhoto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  /// Create a copy of UpdatePhoto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExifCopyWith<$Res>? get exif {
    if (_value.exif == null) {
      return null;
    }

    return $ExifCopyWith<$Res>(_value.exif!, (value) {
      return _then(_value.copyWith(exif: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpdatePhotoImplCopyWith<$Res>
    implements $UpdatePhotoCopyWith<$Res> {
  factory _$$UpdatePhotoImplCopyWith(
          _$UpdatePhotoImpl value, $Res Function(_$UpdatePhotoImpl) then) =
      __$$UpdatePhotoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? description,
      String? showOnProfile,
      String? tags,
      Location? location,
      Exif? exif});

  @override
  $LocationCopyWith<$Res>? get location;
  @override
  $ExifCopyWith<$Res>? get exif;
}

/// @nodoc
class __$$UpdatePhotoImplCopyWithImpl<$Res>
    extends _$UpdatePhotoCopyWithImpl<$Res, _$UpdatePhotoImpl>
    implements _$$UpdatePhotoImplCopyWith<$Res> {
  __$$UpdatePhotoImplCopyWithImpl(
      _$UpdatePhotoImpl _value, $Res Function(_$UpdatePhotoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdatePhoto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? showOnProfile = freezed,
    Object? tags = freezed,
    Object? location = freezed,
    Object? exif = freezed,
  }) {
    return _then(_$UpdatePhotoImpl(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      showOnProfile: freezed == showOnProfile
          ? _value.showOnProfile
          : showOnProfile // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      exif: freezed == exif
          ? _value.exif
          : exif // ignore: cast_nullable_to_non_nullable
              as Exif?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$UpdatePhotoImpl implements _UpdatePhoto {
  _$UpdatePhotoImpl(
      {this.description,
      this.showOnProfile,
      this.tags,
      this.location,
      this.exif});

  factory _$UpdatePhotoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdatePhotoImplFromJson(json);

  @override
  String? description;
  @override
  String? showOnProfile;
  @override
  String? tags;
  @override
  Location? location;
  @override
  Exif? exif;

  @override
  String toString() {
    return 'UpdatePhoto(description: $description, showOnProfile: $showOnProfile, tags: $tags, location: $location, exif: $exif)';
  }

  /// Create a copy of UpdatePhoto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePhotoImplCopyWith<_$UpdatePhotoImpl> get copyWith =>
      __$$UpdatePhotoImplCopyWithImpl<_$UpdatePhotoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdatePhotoImplToJson(
      this,
    );
  }
}

abstract class _UpdatePhoto implements UpdatePhoto {
  factory _UpdatePhoto(
      {String? description,
      String? showOnProfile,
      String? tags,
      Location? location,
      Exif? exif}) = _$UpdatePhotoImpl;

  factory _UpdatePhoto.fromJson(Map<String, dynamic> json) =
      _$UpdatePhotoImpl.fromJson;

  @override
  String? get description;
  set description(String? value);
  @override
  String? get showOnProfile;
  set showOnProfile(String? value);
  @override
  String? get tags;
  set tags(String? value);
  @override
  Location? get location;
  set location(Location? value);
  @override
  Exif? get exif;
  set exif(Exif? value);

  /// Create a copy of UpdatePhoto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatePhotoImplCopyWith<_$UpdatePhotoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Exif _$ExifFromJson(Map<String, dynamic> json) {
  return _Exif.fromJson(json);
}

/// @nodoc
mixin _$Exif {
  /// Camera's brand
  String? get make => throw _privateConstructorUsedError;

  /// Camera's model
  String? get model => throw _privateConstructorUsedError;

  /// Camera's exposure time
  String? get exposureTime => throw _privateConstructorUsedError;

  /// Camera's aperture value
  String? get apertureValue => throw _privateConstructorUsedError;

  /// Camera's focal length
  String? get focalLength => throw _privateConstructorUsedError;

  /// ISO speed ratings
  String? get isoSpeedRatings => throw _privateConstructorUsedError;

  /// Serializes this Exif to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Exif
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExifCopyWith<Exif> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExifCopyWith<$Res> {
  factory $ExifCopyWith(Exif value, $Res Function(Exif) then) =
      _$ExifCopyWithImpl<$Res, Exif>;
  @useResult
  $Res call(
      {String? make,
      String? model,
      String? exposureTime,
      String? apertureValue,
      String? focalLength,
      String? isoSpeedRatings});
}

/// @nodoc
class _$ExifCopyWithImpl<$Res, $Val extends Exif>
    implements $ExifCopyWith<$Res> {
  _$ExifCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Exif
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? make = freezed,
    Object? model = freezed,
    Object? exposureTime = freezed,
    Object? apertureValue = freezed,
    Object? focalLength = freezed,
    Object? isoSpeedRatings = freezed,
  }) {
    return _then(_value.copyWith(
      make: freezed == make
          ? _value.make
          : make // ignore: cast_nullable_to_non_nullable
              as String?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      exposureTime: freezed == exposureTime
          ? _value.exposureTime
          : exposureTime // ignore: cast_nullable_to_non_nullable
              as String?,
      apertureValue: freezed == apertureValue
          ? _value.apertureValue
          : apertureValue // ignore: cast_nullable_to_non_nullable
              as String?,
      focalLength: freezed == focalLength
          ? _value.focalLength
          : focalLength // ignore: cast_nullable_to_non_nullable
              as String?,
      isoSpeedRatings: freezed == isoSpeedRatings
          ? _value.isoSpeedRatings
          : isoSpeedRatings // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExifImplCopyWith<$Res> implements $ExifCopyWith<$Res> {
  factory _$$ExifImplCopyWith(
          _$ExifImpl value, $Res Function(_$ExifImpl) then) =
      __$$ExifImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? make,
      String? model,
      String? exposureTime,
      String? apertureValue,
      String? focalLength,
      String? isoSpeedRatings});
}

/// @nodoc
class __$$ExifImplCopyWithImpl<$Res>
    extends _$ExifCopyWithImpl<$Res, _$ExifImpl>
    implements _$$ExifImplCopyWith<$Res> {
  __$$ExifImplCopyWithImpl(_$ExifImpl _value, $Res Function(_$ExifImpl) _then)
      : super(_value, _then);

  /// Create a copy of Exif
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? make = freezed,
    Object? model = freezed,
    Object? exposureTime = freezed,
    Object? apertureValue = freezed,
    Object? focalLength = freezed,
    Object? isoSpeedRatings = freezed,
  }) {
    return _then(_$ExifImpl(
      make: freezed == make
          ? _value.make
          : make // ignore: cast_nullable_to_non_nullable
              as String?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      exposureTime: freezed == exposureTime
          ? _value.exposureTime
          : exposureTime // ignore: cast_nullable_to_non_nullable
              as String?,
      apertureValue: freezed == apertureValue
          ? _value.apertureValue
          : apertureValue // ignore: cast_nullable_to_non_nullable
              as String?,
      focalLength: freezed == focalLength
          ? _value.focalLength
          : focalLength // ignore: cast_nullable_to_non_nullable
              as String?,
      isoSpeedRatings: freezed == isoSpeedRatings
          ? _value.isoSpeedRatings
          : isoSpeedRatings // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExifImpl implements _Exif {
  const _$ExifImpl(
      {this.make,
      this.model,
      this.exposureTime,
      this.apertureValue,
      this.focalLength,
      this.isoSpeedRatings});

  factory _$ExifImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExifImplFromJson(json);

  /// Camera's brand
  @override
  final String? make;

  /// Camera's model
  @override
  final String? model;

  /// Camera's exposure time
  @override
  final String? exposureTime;

  /// Camera's aperture value
  @override
  final String? apertureValue;

  /// Camera's focal length
  @override
  final String? focalLength;

  /// ISO speed ratings
  @override
  final String? isoSpeedRatings;

  @override
  String toString() {
    return 'Exif(make: $make, model: $model, exposureTime: $exposureTime, apertureValue: $apertureValue, focalLength: $focalLength, isoSpeedRatings: $isoSpeedRatings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExifImpl &&
            (identical(other.make, make) || other.make == make) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.exposureTime, exposureTime) ||
                other.exposureTime == exposureTime) &&
            (identical(other.apertureValue, apertureValue) ||
                other.apertureValue == apertureValue) &&
            (identical(other.focalLength, focalLength) ||
                other.focalLength == focalLength) &&
            (identical(other.isoSpeedRatings, isoSpeedRatings) ||
                other.isoSpeedRatings == isoSpeedRatings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, make, model, exposureTime,
      apertureValue, focalLength, isoSpeedRatings);

  /// Create a copy of Exif
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExifImplCopyWith<_$ExifImpl> get copyWith =>
      __$$ExifImplCopyWithImpl<_$ExifImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExifImplToJson(
      this,
    );
  }
}

abstract class _Exif implements Exif {
  const factory _Exif(
      {final String? make,
      final String? model,
      final String? exposureTime,
      final String? apertureValue,
      final String? focalLength,
      final String? isoSpeedRatings}) = _$ExifImpl;

  factory _Exif.fromJson(Map<String, dynamic> json) = _$ExifImpl.fromJson;

  /// Camera's brand
  @override
  String? get make;

  /// Camera's model
  @override
  String? get model;

  /// Camera's exposure time
  @override
  String? get exposureTime;

  /// Camera's aperture value
  @override
  String? get apertureValue;

  /// Camera's focal length
  @override
  String? get focalLength;

  /// ISO speed ratings
  @override
  String? get isoSpeedRatings;

  /// Create a copy of Exif
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExifImplCopyWith<_$ExifImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
mixin _$Location {
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;

  /// Serializes this Location to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res, Location>;
  @useResult
  $Res call(
      {double? latitude,
      double? longitude,
      String? name,
      String? city,
      String? country});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res, $Val extends Location>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? name = freezed,
    Object? city = freezed,
    Object? country = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationImplCopyWith<$Res>
    implements $LocationCopyWith<$Res> {
  factory _$$LocationImplCopyWith(
          _$LocationImpl value, $Res Function(_$LocationImpl) then) =
      __$$LocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? latitude,
      double? longitude,
      String? name,
      String? city,
      String? country});
}

/// @nodoc
class __$$LocationImplCopyWithImpl<$Res>
    extends _$LocationCopyWithImpl<$Res, _$LocationImpl>
    implements _$$LocationImplCopyWith<$Res> {
  __$$LocationImplCopyWithImpl(
      _$LocationImpl _value, $Res Function(_$LocationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? name = freezed,
    Object? city = freezed,
    Object? country = freezed,
  }) {
    return _then(_$LocationImpl(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationImpl implements _Location {
  const _$LocationImpl(
      {this.latitude, this.longitude, this.name, this.city, this.country});

  factory _$LocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationImplFromJson(json);

  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final String? name;
  @override
  final String? city;
  @override
  final String? country;

  @override
  String toString() {
    return 'Location(latitude: $latitude, longitude: $longitude, name: $name, city: $city, country: $country)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.country, country) || other.country == country));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, latitude, longitude, name, city, country);

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      __$$LocationImplCopyWithImpl<_$LocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationImplToJson(
      this,
    );
  }
}

abstract class _Location implements Location {
  const factory _Location(
      {final double? latitude,
      final double? longitude,
      final String? name,
      final String? city,
      final String? country}) = _$LocationImpl;

  factory _Location.fromJson(Map<String, dynamic> json) =
      _$LocationImpl.fromJson;

  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  String? get name;
  @override
  String? get city;
  @override
  String? get country;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateUser _$UpdateUserFromJson(Map<String, dynamic> json) {
  return _UpdateUser.fromJson(json);
}

/// @nodoc
mixin _$UpdateUser {
  String? get username => throw _privateConstructorUsedError;
  set username(String? value) => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  set firstName(String? value) => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  set lastName(String? value) => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  set email(String? value) => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  set url(String? value) => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  set location(String? value) => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  set bio(String? value) => throw _privateConstructorUsedError;
  String? get instagramUsername => throw _privateConstructorUsedError;
  set instagramUsername(String? value) => throw _privateConstructorUsedError;

  /// Serializes this UpdateUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateUserCopyWith<UpdateUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserCopyWith<$Res> {
  factory $UpdateUserCopyWith(
          UpdateUser value, $Res Function(UpdateUser) then) =
      _$UpdateUserCopyWithImpl<$Res, UpdateUser>;
  @useResult
  $Res call(
      {String? username,
      String? firstName,
      String? lastName,
      String? email,
      String? url,
      String? location,
      String? bio,
      String? instagramUsername});
}

/// @nodoc
class _$UpdateUserCopyWithImpl<$Res, $Val extends UpdateUser>
    implements $UpdateUserCopyWith<$Res> {
  _$UpdateUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? url = freezed,
    Object? location = freezed,
    Object? bio = freezed,
    Object? instagramUsername = freezed,
  }) {
    return _then(_value.copyWith(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      instagramUsername: freezed == instagramUsername
          ? _value.instagramUsername
          : instagramUsername // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateUserImplCopyWith<$Res>
    implements $UpdateUserCopyWith<$Res> {
  factory _$$UpdateUserImplCopyWith(
          _$UpdateUserImpl value, $Res Function(_$UpdateUserImpl) then) =
      __$$UpdateUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? username,
      String? firstName,
      String? lastName,
      String? email,
      String? url,
      String? location,
      String? bio,
      String? instagramUsername});
}

/// @nodoc
class __$$UpdateUserImplCopyWithImpl<$Res>
    extends _$UpdateUserCopyWithImpl<$Res, _$UpdateUserImpl>
    implements _$$UpdateUserImplCopyWith<$Res> {
  __$$UpdateUserImplCopyWithImpl(
      _$UpdateUserImpl _value, $Res Function(_$UpdateUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? url = freezed,
    Object? location = freezed,
    Object? bio = freezed,
    Object? instagramUsername = freezed,
  }) {
    return _then(_$UpdateUserImpl(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      instagramUsername: freezed == instagramUsername
          ? _value.instagramUsername
          : instagramUsername // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$UpdateUserImpl implements _UpdateUser {
  _$UpdateUserImpl(
      {this.username,
      this.firstName,
      this.lastName,
      this.email,
      this.url,
      this.location,
      this.bio,
      this.instagramUsername});

  factory _$UpdateUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateUserImplFromJson(json);

  @override
  String? username;
  @override
  String? firstName;
  @override
  String? lastName;
  @override
  String? email;
  @override
  String? url;
  @override
  String? location;
  @override
  String? bio;
  @override
  String? instagramUsername;

  @override
  String toString() {
    return 'UpdateUser(username: $username, firstName: $firstName, lastName: $lastName, email: $email, url: $url, location: $location, bio: $bio, instagramUsername: $instagramUsername)';
  }

  /// Create a copy of UpdateUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserImplCopyWith<_$UpdateUserImpl> get copyWith =>
      __$$UpdateUserImplCopyWithImpl<_$UpdateUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateUserImplToJson(
      this,
    );
  }
}

abstract class _UpdateUser implements UpdateUser {
  factory _UpdateUser(
      {String? username,
      String? firstName,
      String? lastName,
      String? email,
      String? url,
      String? location,
      String? bio,
      String? instagramUsername}) = _$UpdateUserImpl;

  factory _UpdateUser.fromJson(Map<String, dynamic> json) =
      _$UpdateUserImpl.fromJson;

  @override
  String? get username;
  set username(String? value);
  @override
  String? get firstName;
  set firstName(String? value);
  @override
  String? get lastName;
  set lastName(String? value);
  @override
  String? get email;
  set email(String? value);
  @override
  String? get url;
  set url(String? value);
  @override
  String? get location;
  set location(String? value);
  @override
  String? get bio;
  set bio(String? value);
  @override
  String? get instagramUsername;
  set instagramUsername(String? value);

  /// Create a copy of UpdateUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateUserImplCopyWith<_$UpdateUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfileImage _$ProfileImageFromJson(Map<String, dynamic> json) {
  return _ProfileImage.fromJson(json);
}

/// @nodoc
mixin _$ProfileImage {
  String get small => throw _privateConstructorUsedError;
  String get medium => throw _privateConstructorUsedError;
  String get large => throw _privateConstructorUsedError;

  /// Serializes this ProfileImage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileImageCopyWith<ProfileImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileImageCopyWith<$Res> {
  factory $ProfileImageCopyWith(
          ProfileImage value, $Res Function(ProfileImage) then) =
      _$ProfileImageCopyWithImpl<$Res, ProfileImage>;
  @useResult
  $Res call({String small, String medium, String large});
}

/// @nodoc
class _$ProfileImageCopyWithImpl<$Res, $Val extends ProfileImage>
    implements $ProfileImageCopyWith<$Res> {
  _$ProfileImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = null,
    Object? medium = null,
    Object? large = null,
  }) {
    return _then(_value.copyWith(
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String,
      medium: null == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String,
      large: null == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileImageImplCopyWith<$Res>
    implements $ProfileImageCopyWith<$Res> {
  factory _$$ProfileImageImplCopyWith(
          _$ProfileImageImpl value, $Res Function(_$ProfileImageImpl) then) =
      __$$ProfileImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String small, String medium, String large});
}

/// @nodoc
class __$$ProfileImageImplCopyWithImpl<$Res>
    extends _$ProfileImageCopyWithImpl<$Res, _$ProfileImageImpl>
    implements _$$ProfileImageImplCopyWith<$Res> {
  __$$ProfileImageImplCopyWithImpl(
      _$ProfileImageImpl _value, $Res Function(_$ProfileImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = null,
    Object? medium = null,
    Object? large = null,
  }) {
    return _then(_$ProfileImageImpl(
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String,
      medium: null == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String,
      large: null == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileImageImpl implements _ProfileImage {
  const _$ProfileImageImpl(
      {required this.small, required this.medium, required this.large});

  factory _$ProfileImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileImageImplFromJson(json);

  @override
  final String small;
  @override
  final String medium;
  @override
  final String large;

  @override
  String toString() {
    return 'ProfileImage(small: $small, medium: $medium, large: $large)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileImageImpl &&
            (identical(other.small, small) || other.small == small) &&
            (identical(other.medium, medium) || other.medium == medium) &&
            (identical(other.large, large) || other.large == large));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, small, medium, large);

  /// Create a copy of ProfileImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileImageImplCopyWith<_$ProfileImageImpl> get copyWith =>
      __$$ProfileImageImplCopyWithImpl<_$ProfileImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileImageImplToJson(
      this,
    );
  }
}

abstract class _ProfileImage implements ProfileImage {
  const factory _ProfileImage(
      {required final String small,
      required final String medium,
      required final String large}) = _$ProfileImageImpl;

  factory _ProfileImage.fromJson(Map<String, dynamic> json) =
      _$ProfileImageImpl.fromJson;

  @override
  String get small;
  @override
  String get medium;
  @override
  String get large;

  /// Create a copy of ProfileImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileImageImplCopyWith<_$ProfileImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Social _$SocialFromJson(Map<String, dynamic> json) {
  return _Social.fromJson(json);
}

/// @nodoc
mixin _$Social {
  String? get instagramUsername => throw _privateConstructorUsedError;
  String? get portfolioUrl => throw _privateConstructorUsedError;
  String? get twitterUsername => throw _privateConstructorUsedError;

  /// Serializes this Social to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Social
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SocialCopyWith<Social> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialCopyWith<$Res> {
  factory $SocialCopyWith(Social value, $Res Function(Social) then) =
      _$SocialCopyWithImpl<$Res, Social>;
  @useResult
  $Res call(
      {String? instagramUsername,
      String? portfolioUrl,
      String? twitterUsername});
}

/// @nodoc
class _$SocialCopyWithImpl<$Res, $Val extends Social>
    implements $SocialCopyWith<$Res> {
  _$SocialCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Social
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? instagramUsername = freezed,
    Object? portfolioUrl = freezed,
    Object? twitterUsername = freezed,
  }) {
    return _then(_value.copyWith(
      instagramUsername: freezed == instagramUsername
          ? _value.instagramUsername
          : instagramUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      portfolioUrl: freezed == portfolioUrl
          ? _value.portfolioUrl
          : portfolioUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      twitterUsername: freezed == twitterUsername
          ? _value.twitterUsername
          : twitterUsername // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocialImplCopyWith<$Res> implements $SocialCopyWith<$Res> {
  factory _$$SocialImplCopyWith(
          _$SocialImpl value, $Res Function(_$SocialImpl) then) =
      __$$SocialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? instagramUsername,
      String? portfolioUrl,
      String? twitterUsername});
}

/// @nodoc
class __$$SocialImplCopyWithImpl<$Res>
    extends _$SocialCopyWithImpl<$Res, _$SocialImpl>
    implements _$$SocialImplCopyWith<$Res> {
  __$$SocialImplCopyWithImpl(
      _$SocialImpl _value, $Res Function(_$SocialImpl) _then)
      : super(_value, _then);

  /// Create a copy of Social
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? instagramUsername = freezed,
    Object? portfolioUrl = freezed,
    Object? twitterUsername = freezed,
  }) {
    return _then(_$SocialImpl(
      instagramUsername: freezed == instagramUsername
          ? _value.instagramUsername
          : instagramUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      portfolioUrl: freezed == portfolioUrl
          ? _value.portfolioUrl
          : portfolioUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      twitterUsername: freezed == twitterUsername
          ? _value.twitterUsername
          : twitterUsername // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocialImpl implements _Social {
  const _$SocialImpl(
      {this.instagramUsername, this.portfolioUrl, this.twitterUsername});

  factory _$SocialImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocialImplFromJson(json);

  @override
  final String? instagramUsername;
  @override
  final String? portfolioUrl;
  @override
  final String? twitterUsername;

  @override
  String toString() {
    return 'Social(instagramUsername: $instagramUsername, portfolioUrl: $portfolioUrl, twitterUsername: $twitterUsername)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialImpl &&
            (identical(other.instagramUsername, instagramUsername) ||
                other.instagramUsername == instagramUsername) &&
            (identical(other.portfolioUrl, portfolioUrl) ||
                other.portfolioUrl == portfolioUrl) &&
            (identical(other.twitterUsername, twitterUsername) ||
                other.twitterUsername == twitterUsername));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, instagramUsername, portfolioUrl, twitterUsername);

  /// Create a copy of Social
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SocialImplCopyWith<_$SocialImpl> get copyWith =>
      __$$SocialImplCopyWithImpl<_$SocialImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocialImplToJson(
      this,
    );
  }
}

abstract class _Social implements Social {
  const factory _Social(
      {final String? instagramUsername,
      final String? portfolioUrl,
      final String? twitterUsername}) = _$SocialImpl;

  factory _Social.fromJson(Map<String, dynamic> json) = _$SocialImpl.fromJson;

  @override
  String? get instagramUsername;
  @override
  String? get portfolioUrl;
  @override
  String? get twitterUsername;

  /// Create a copy of Social
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocialImplCopyWith<_$SocialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String get id => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get instagramUsername => throw _privateConstructorUsedError;
  String? get twitterUsername => throw _privateConstructorUsedError;
  String? get portfolioUrl => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  int? get totalLikes => throw _privateConstructorUsedError;
  int? get totalPhotos => throw _privateConstructorUsedError;
  int? get totalCollections => throw _privateConstructorUsedError;
  bool? get followedByUser => throw _privateConstructorUsedError;
  int? get followersCount => throw _privateConstructorUsedError;
  int? get followingCount => throw _privateConstructorUsedError;
  int? get downloads => throw _privateConstructorUsedError;
  Social? get social => throw _privateConstructorUsedError;
  ProfileImage? get profileImage => throw _privateConstructorUsedError;
  UserBadge? get badge => throw _privateConstructorUsedError;
  UserLinks? get links => throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String id,
      String? updatedAt,
      String? username,
      String? name,
      String? firstName,
      String? lastName,
      String? instagramUsername,
      String? twitterUsername,
      String? portfolioUrl,
      String? bio,
      String? location,
      int? totalLikes,
      int? totalPhotos,
      int? totalCollections,
      bool? followedByUser,
      int? followersCount,
      int? followingCount,
      int? downloads,
      Social? social,
      ProfileImage? profileImage,
      UserBadge? badge,
      UserLinks? links});

  $SocialCopyWith<$Res>? get social;
  $ProfileImageCopyWith<$Res>? get profileImage;
  $UserBadgeCopyWith<$Res>? get badge;
  $UserLinksCopyWith<$Res>? get links;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? updatedAt = freezed,
    Object? username = freezed,
    Object? name = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? instagramUsername = freezed,
    Object? twitterUsername = freezed,
    Object? portfolioUrl = freezed,
    Object? bio = freezed,
    Object? location = freezed,
    Object? totalLikes = freezed,
    Object? totalPhotos = freezed,
    Object? totalCollections = freezed,
    Object? followedByUser = freezed,
    Object? followersCount = freezed,
    Object? followingCount = freezed,
    Object? downloads = freezed,
    Object? social = freezed,
    Object? profileImage = freezed,
    Object? badge = freezed,
    Object? links = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      instagramUsername: freezed == instagramUsername
          ? _value.instagramUsername
          : instagramUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      twitterUsername: freezed == twitterUsername
          ? _value.twitterUsername
          : twitterUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      portfolioUrl: freezed == portfolioUrl
          ? _value.portfolioUrl
          : portfolioUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      totalLikes: freezed == totalLikes
          ? _value.totalLikes
          : totalLikes // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPhotos: freezed == totalPhotos
          ? _value.totalPhotos
          : totalPhotos // ignore: cast_nullable_to_non_nullable
              as int?,
      totalCollections: freezed == totalCollections
          ? _value.totalCollections
          : totalCollections // ignore: cast_nullable_to_non_nullable
              as int?,
      followedByUser: freezed == followedByUser
          ? _value.followedByUser
          : followedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      followersCount: freezed == followersCount
          ? _value.followersCount
          : followersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      followingCount: freezed == followingCount
          ? _value.followingCount
          : followingCount // ignore: cast_nullable_to_non_nullable
              as int?,
      downloads: freezed == downloads
          ? _value.downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as int?,
      social: freezed == social
          ? _value.social
          : social // ignore: cast_nullable_to_non_nullable
              as Social?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as ProfileImage?,
      badge: freezed == badge
          ? _value.badge
          : badge // ignore: cast_nullable_to_non_nullable
              as UserBadge?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as UserLinks?,
    ) as $Val);
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SocialCopyWith<$Res>? get social {
    if (_value.social == null) {
      return null;
    }

    return $SocialCopyWith<$Res>(_value.social!, (value) {
      return _then(_value.copyWith(social: value) as $Val);
    });
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileImageCopyWith<$Res>? get profileImage {
    if (_value.profileImage == null) {
      return null;
    }

    return $ProfileImageCopyWith<$Res>(_value.profileImage!, (value) {
      return _then(_value.copyWith(profileImage: value) as $Val);
    });
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserBadgeCopyWith<$Res>? get badge {
    if (_value.badge == null) {
      return null;
    }

    return $UserBadgeCopyWith<$Res>(_value.badge!, (value) {
      return _then(_value.copyWith(badge: value) as $Val);
    });
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserLinksCopyWith<$Res>? get links {
    if (_value.links == null) {
      return null;
    }

    return $UserLinksCopyWith<$Res>(_value.links!, (value) {
      return _then(_value.copyWith(links: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? updatedAt,
      String? username,
      String? name,
      String? firstName,
      String? lastName,
      String? instagramUsername,
      String? twitterUsername,
      String? portfolioUrl,
      String? bio,
      String? location,
      int? totalLikes,
      int? totalPhotos,
      int? totalCollections,
      bool? followedByUser,
      int? followersCount,
      int? followingCount,
      int? downloads,
      Social? social,
      ProfileImage? profileImage,
      UserBadge? badge,
      UserLinks? links});

  @override
  $SocialCopyWith<$Res>? get social;
  @override
  $ProfileImageCopyWith<$Res>? get profileImage;
  @override
  $UserBadgeCopyWith<$Res>? get badge;
  @override
  $UserLinksCopyWith<$Res>? get links;
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? updatedAt = freezed,
    Object? username = freezed,
    Object? name = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? instagramUsername = freezed,
    Object? twitterUsername = freezed,
    Object? portfolioUrl = freezed,
    Object? bio = freezed,
    Object? location = freezed,
    Object? totalLikes = freezed,
    Object? totalPhotos = freezed,
    Object? totalCollections = freezed,
    Object? followedByUser = freezed,
    Object? followersCount = freezed,
    Object? followingCount = freezed,
    Object? downloads = freezed,
    Object? social = freezed,
    Object? profileImage = freezed,
    Object? badge = freezed,
    Object? links = freezed,
  }) {
    return _then(_$UserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      instagramUsername: freezed == instagramUsername
          ? _value.instagramUsername
          : instagramUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      twitterUsername: freezed == twitterUsername
          ? _value.twitterUsername
          : twitterUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      portfolioUrl: freezed == portfolioUrl
          ? _value.portfolioUrl
          : portfolioUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      totalLikes: freezed == totalLikes
          ? _value.totalLikes
          : totalLikes // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPhotos: freezed == totalPhotos
          ? _value.totalPhotos
          : totalPhotos // ignore: cast_nullable_to_non_nullable
              as int?,
      totalCollections: freezed == totalCollections
          ? _value.totalCollections
          : totalCollections // ignore: cast_nullable_to_non_nullable
              as int?,
      followedByUser: freezed == followedByUser
          ? _value.followedByUser
          : followedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      followersCount: freezed == followersCount
          ? _value.followersCount
          : followersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      followingCount: freezed == followingCount
          ? _value.followingCount
          : followingCount // ignore: cast_nullable_to_non_nullable
              as int?,
      downloads: freezed == downloads
          ? _value.downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as int?,
      social: freezed == social
          ? _value.social
          : social // ignore: cast_nullable_to_non_nullable
              as Social?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as ProfileImage?,
      badge: freezed == badge
          ? _value.badge
          : badge // ignore: cast_nullable_to_non_nullable
              as UserBadge?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as UserLinks?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl(
      {required this.id,
      this.updatedAt,
      this.username,
      this.name,
      this.firstName,
      this.lastName,
      this.instagramUsername,
      this.twitterUsername,
      this.portfolioUrl,
      this.bio,
      this.location,
      this.totalLikes,
      this.totalPhotos,
      this.totalCollections,
      this.followedByUser,
      this.followersCount,
      this.followingCount,
      this.downloads,
      this.social,
      this.profileImage,
      this.badge,
      this.links});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final String id;
  @override
  final String? updatedAt;
  @override
  final String? username;
  @override
  final String? name;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? instagramUsername;
  @override
  final String? twitterUsername;
  @override
  final String? portfolioUrl;
  @override
  final String? bio;
  @override
  final String? location;
  @override
  final int? totalLikes;
  @override
  final int? totalPhotos;
  @override
  final int? totalCollections;
  @override
  final bool? followedByUser;
  @override
  final int? followersCount;
  @override
  final int? followingCount;
  @override
  final int? downloads;
  @override
  final Social? social;
  @override
  final ProfileImage? profileImage;
  @override
  final UserBadge? badge;
  @override
  final UserLinks? links;

  @override
  String toString() {
    return 'User(id: $id, updatedAt: $updatedAt, username: $username, name: $name, firstName: $firstName, lastName: $lastName, instagramUsername: $instagramUsername, twitterUsername: $twitterUsername, portfolioUrl: $portfolioUrl, bio: $bio, location: $location, totalLikes: $totalLikes, totalPhotos: $totalPhotos, totalCollections: $totalCollections, followedByUser: $followedByUser, followersCount: $followersCount, followingCount: $followingCount, downloads: $downloads, social: $social, profileImage: $profileImage, badge: $badge, links: $links)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.instagramUsername, instagramUsername) ||
                other.instagramUsername == instagramUsername) &&
            (identical(other.twitterUsername, twitterUsername) ||
                other.twitterUsername == twitterUsername) &&
            (identical(other.portfolioUrl, portfolioUrl) ||
                other.portfolioUrl == portfolioUrl) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.totalLikes, totalLikes) ||
                other.totalLikes == totalLikes) &&
            (identical(other.totalPhotos, totalPhotos) ||
                other.totalPhotos == totalPhotos) &&
            (identical(other.totalCollections, totalCollections) ||
                other.totalCollections == totalCollections) &&
            (identical(other.followedByUser, followedByUser) ||
                other.followedByUser == followedByUser) &&
            (identical(other.followersCount, followersCount) ||
                other.followersCount == followersCount) &&
            (identical(other.followingCount, followingCount) ||
                other.followingCount == followingCount) &&
            (identical(other.downloads, downloads) ||
                other.downloads == downloads) &&
            (identical(other.social, social) || other.social == social) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.badge, badge) || other.badge == badge) &&
            (identical(other.links, links) || other.links == links));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        updatedAt,
        username,
        name,
        firstName,
        lastName,
        instagramUsername,
        twitterUsername,
        portfolioUrl,
        bio,
        location,
        totalLikes,
        totalPhotos,
        totalCollections,
        followedByUser,
        followersCount,
        followingCount,
        downloads,
        social,
        profileImage,
        badge,
        links
      ]);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {required final String id,
      final String? updatedAt,
      final String? username,
      final String? name,
      final String? firstName,
      final String? lastName,
      final String? instagramUsername,
      final String? twitterUsername,
      final String? portfolioUrl,
      final String? bio,
      final String? location,
      final int? totalLikes,
      final int? totalPhotos,
      final int? totalCollections,
      final bool? followedByUser,
      final int? followersCount,
      final int? followingCount,
      final int? downloads,
      final Social? social,
      final ProfileImage? profileImage,
      final UserBadge? badge,
      final UserLinks? links}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  String get id;
  @override
  String? get updatedAt;
  @override
  String? get username;
  @override
  String? get name;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get instagramUsername;
  @override
  String? get twitterUsername;
  @override
  String? get portfolioUrl;
  @override
  String? get bio;
  @override
  String? get location;
  @override
  int? get totalLikes;
  @override
  int? get totalPhotos;
  @override
  int? get totalCollections;
  @override
  bool? get followedByUser;
  @override
  int? get followersCount;
  @override
  int? get followingCount;
  @override
  int? get downloads;
  @override
  Social? get social;
  @override
  ProfileImage? get profileImage;
  @override
  UserBadge? get badge;
  @override
  UserLinks? get links;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StatValue _$StatValueFromJson(Map<String, dynamic> json) {
  return _StatValue.fromJson(json);
}

/// @nodoc
mixin _$StatValue {
  DateTime get date => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;

  /// Serializes this StatValue to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StatValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StatValueCopyWith<StatValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatValueCopyWith<$Res> {
  factory $StatValueCopyWith(StatValue value, $Res Function(StatValue) then) =
      _$StatValueCopyWithImpl<$Res, StatValue>;
  @useResult
  $Res call({DateTime date, int value});
}

/// @nodoc
class _$StatValueCopyWithImpl<$Res, $Val extends StatValue>
    implements $StatValueCopyWith<$Res> {
  _$StatValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StatValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatValueImplCopyWith<$Res>
    implements $StatValueCopyWith<$Res> {
  factory _$$StatValueImplCopyWith(
          _$StatValueImpl value, $Res Function(_$StatValueImpl) then) =
      __$$StatValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime date, int value});
}

/// @nodoc
class __$$StatValueImplCopyWithImpl<$Res>
    extends _$StatValueCopyWithImpl<$Res, _$StatValueImpl>
    implements _$$StatValueImplCopyWith<$Res> {
  __$$StatValueImplCopyWithImpl(
      _$StatValueImpl _value, $Res Function(_$StatValueImpl) _then)
      : super(_value, _then);

  /// Create a copy of StatValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? value = null,
  }) {
    return _then(_$StatValueImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatValueImpl implements _StatValue {
  const _$StatValueImpl({required this.date, required this.value});

  factory _$StatValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatValueImplFromJson(json);

  @override
  final DateTime date;
  @override
  final int value;

  @override
  String toString() {
    return 'StatValue(date: $date, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatValueImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, value);

  /// Create a copy of StatValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatValueImplCopyWith<_$StatValueImpl> get copyWith =>
      __$$StatValueImplCopyWithImpl<_$StatValueImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatValueImplToJson(
      this,
    );
  }
}

abstract class _StatValue implements StatValue {
  const factory _StatValue(
      {required final DateTime date,
      required final int value}) = _$StatValueImpl;

  factory _StatValue.fromJson(Map<String, dynamic> json) =
      _$StatValueImpl.fromJson;

  @override
  DateTime get date;
  @override
  int get value;

  /// Create a copy of StatValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatValueImplCopyWith<_$StatValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Historical _$HistoricalFromJson(Map<String, dynamic> json) {
  return _Historical.fromJson(json);
}

/// @nodoc
mixin _$Historical {
  int get change => throw _privateConstructorUsedError;
  int get average => throw _privateConstructorUsedError;
  String get resolution => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  List<StatValue> get values => throw _privateConstructorUsedError;

  /// Serializes this Historical to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Historical
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HistoricalCopyWith<Historical> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoricalCopyWith<$Res> {
  factory $HistoricalCopyWith(
          Historical value, $Res Function(Historical) then) =
      _$HistoricalCopyWithImpl<$Res, Historical>;
  @useResult
  $Res call(
      {int change,
      int average,
      String resolution,
      int quantity,
      List<StatValue> values});
}

/// @nodoc
class _$HistoricalCopyWithImpl<$Res, $Val extends Historical>
    implements $HistoricalCopyWith<$Res> {
  _$HistoricalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Historical
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? change = null,
    Object? average = null,
    Object? resolution = null,
    Object? quantity = null,
    Object? values = null,
  }) {
    return _then(_value.copyWith(
      change: null == change
          ? _value.change
          : change // ignore: cast_nullable_to_non_nullable
              as int,
      average: null == average
          ? _value.average
          : average // ignore: cast_nullable_to_non_nullable
              as int,
      resolution: null == resolution
          ? _value.resolution
          : resolution // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      values: null == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<StatValue>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HistoricalImplCopyWith<$Res>
    implements $HistoricalCopyWith<$Res> {
  factory _$$HistoricalImplCopyWith(
          _$HistoricalImpl value, $Res Function(_$HistoricalImpl) then) =
      __$$HistoricalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int change,
      int average,
      String resolution,
      int quantity,
      List<StatValue> values});
}

/// @nodoc
class __$$HistoricalImplCopyWithImpl<$Res>
    extends _$HistoricalCopyWithImpl<$Res, _$HistoricalImpl>
    implements _$$HistoricalImplCopyWith<$Res> {
  __$$HistoricalImplCopyWithImpl(
      _$HistoricalImpl _value, $Res Function(_$HistoricalImpl) _then)
      : super(_value, _then);

  /// Create a copy of Historical
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? change = null,
    Object? average = null,
    Object? resolution = null,
    Object? quantity = null,
    Object? values = null,
  }) {
    return _then(_$HistoricalImpl(
      change: null == change
          ? _value.change
          : change // ignore: cast_nullable_to_non_nullable
              as int,
      average: null == average
          ? _value.average
          : average // ignore: cast_nullable_to_non_nullable
              as int,
      resolution: null == resolution
          ? _value.resolution
          : resolution // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      values: null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<StatValue>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HistoricalImpl implements _Historical {
  const _$HistoricalImpl(
      {required this.change,
      required this.average,
      required this.resolution,
      required this.quantity,
      required final List<StatValue> values})
      : _values = values;

  factory _$HistoricalImpl.fromJson(Map<String, dynamic> json) =>
      _$$HistoricalImplFromJson(json);

  @override
  final int change;
  @override
  final int average;
  @override
  final String resolution;
  @override
  final int quantity;
  final List<StatValue> _values;
  @override
  List<StatValue> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  @override
  String toString() {
    return 'Historical(change: $change, average: $average, resolution: $resolution, quantity: $quantity, values: $values)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoricalImpl &&
            (identical(other.change, change) || other.change == change) &&
            (identical(other.average, average) || other.average == average) &&
            (identical(other.resolution, resolution) ||
                other.resolution == resolution) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, change, average, resolution,
      quantity, const DeepCollectionEquality().hash(_values));

  /// Create a copy of Historical
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoricalImplCopyWith<_$HistoricalImpl> get copyWith =>
      __$$HistoricalImplCopyWithImpl<_$HistoricalImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HistoricalImplToJson(
      this,
    );
  }
}

abstract class _Historical implements Historical {
  const factory _Historical(
      {required final int change,
      required final int average,
      required final String resolution,
      required final int quantity,
      required final List<StatValue> values}) = _$HistoricalImpl;

  factory _Historical.fromJson(Map<String, dynamic> json) =
      _$HistoricalImpl.fromJson;

  @override
  int get change;
  @override
  int get average;
  @override
  String get resolution;
  @override
  int get quantity;
  @override
  List<StatValue> get values;

  /// Create a copy of Historical
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HistoricalImplCopyWith<_$HistoricalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserLinks _$UserLinksFromJson(Map<String, dynamic> json) {
  return _UserLinks.fromJson(json);
}

/// @nodoc
mixin _$UserLinks {
  String? get self => throw _privateConstructorUsedError;
  String? get html => throw _privateConstructorUsedError;
  String? get photos => throw _privateConstructorUsedError;
  String? get likes => throw _privateConstructorUsedError;
  String? get portfolio => throw _privateConstructorUsedError;

  /// Serializes this UserLinks to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserLinks
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserLinksCopyWith<UserLinks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLinksCopyWith<$Res> {
  factory $UserLinksCopyWith(UserLinks value, $Res Function(UserLinks) then) =
      _$UserLinksCopyWithImpl<$Res, UserLinks>;
  @useResult
  $Res call(
      {String? self,
      String? html,
      String? photos,
      String? likes,
      String? portfolio});
}

/// @nodoc
class _$UserLinksCopyWithImpl<$Res, $Val extends UserLinks>
    implements $UserLinksCopyWith<$Res> {
  _$UserLinksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserLinks
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? self = freezed,
    Object? html = freezed,
    Object? photos = freezed,
    Object? likes = freezed,
    Object? portfolio = freezed,
  }) {
    return _then(_value.copyWith(
      self: freezed == self
          ? _value.self
          : self // ignore: cast_nullable_to_non_nullable
              as String?,
      html: freezed == html
          ? _value.html
          : html // ignore: cast_nullable_to_non_nullable
              as String?,
      photos: freezed == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as String?,
      likes: freezed == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as String?,
      portfolio: freezed == portfolio
          ? _value.portfolio
          : portfolio // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserLinksImplCopyWith<$Res>
    implements $UserLinksCopyWith<$Res> {
  factory _$$UserLinksImplCopyWith(
          _$UserLinksImpl value, $Res Function(_$UserLinksImpl) then) =
      __$$UserLinksImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? self,
      String? html,
      String? photos,
      String? likes,
      String? portfolio});
}

/// @nodoc
class __$$UserLinksImplCopyWithImpl<$Res>
    extends _$UserLinksCopyWithImpl<$Res, _$UserLinksImpl>
    implements _$$UserLinksImplCopyWith<$Res> {
  __$$UserLinksImplCopyWithImpl(
      _$UserLinksImpl _value, $Res Function(_$UserLinksImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserLinks
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? self = freezed,
    Object? html = freezed,
    Object? photos = freezed,
    Object? likes = freezed,
    Object? portfolio = freezed,
  }) {
    return _then(_$UserLinksImpl(
      self: freezed == self
          ? _value.self
          : self // ignore: cast_nullable_to_non_nullable
              as String?,
      html: freezed == html
          ? _value.html
          : html // ignore: cast_nullable_to_non_nullable
              as String?,
      photos: freezed == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as String?,
      likes: freezed == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as String?,
      portfolio: freezed == portfolio
          ? _value.portfolio
          : portfolio // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserLinksImpl implements _UserLinks {
  const _$UserLinksImpl(
      {this.self, this.html, this.photos, this.likes, this.portfolio});

  factory _$UserLinksImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserLinksImplFromJson(json);

  @override
  final String? self;
  @override
  final String? html;
  @override
  final String? photos;
  @override
  final String? likes;
  @override
  final String? portfolio;

  @override
  String toString() {
    return 'UserLinks(self: $self, html: $html, photos: $photos, likes: $likes, portfolio: $portfolio)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLinksImpl &&
            (identical(other.self, self) || other.self == self) &&
            (identical(other.html, html) || other.html == html) &&
            (identical(other.photos, photos) || other.photos == photos) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.portfolio, portfolio) ||
                other.portfolio == portfolio));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, self, html, photos, likes, portfolio);

  /// Create a copy of UserLinks
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLinksImplCopyWith<_$UserLinksImpl> get copyWith =>
      __$$UserLinksImplCopyWithImpl<_$UserLinksImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserLinksImplToJson(
      this,
    );
  }
}

abstract class _UserLinks implements UserLinks {
  const factory _UserLinks(
      {final String? self,
      final String? html,
      final String? photos,
      final String? likes,
      final String? portfolio}) = _$UserLinksImpl;

  factory _UserLinks.fromJson(Map<String, dynamic> json) =
      _$UserLinksImpl.fromJson;

  @override
  String? get self;
  @override
  String? get html;
  @override
  String? get photos;
  @override
  String? get likes;
  @override
  String? get portfolio;

  /// Create a copy of UserLinks
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserLinksImplCopyWith<_$UserLinksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PhotoLinks _$PhotoLinksFromJson(Map<String, dynamic> json) {
  return _PhotoLinks.fromJson(json);
}

/// @nodoc
mixin _$PhotoLinks {
  String? get self => throw _privateConstructorUsedError;
  String? get html => throw _privateConstructorUsedError;
  String? get download => throw _privateConstructorUsedError;
  String? get downloadLocation => throw _privateConstructorUsedError;

  /// Serializes this PhotoLinks to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PhotoLinks
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PhotoLinksCopyWith<PhotoLinks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoLinksCopyWith<$Res> {
  factory $PhotoLinksCopyWith(
          PhotoLinks value, $Res Function(PhotoLinks) then) =
      _$PhotoLinksCopyWithImpl<$Res, PhotoLinks>;
  @useResult
  $Res call(
      {String? self, String? html, String? download, String? downloadLocation});
}

/// @nodoc
class _$PhotoLinksCopyWithImpl<$Res, $Val extends PhotoLinks>
    implements $PhotoLinksCopyWith<$Res> {
  _$PhotoLinksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PhotoLinks
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? self = freezed,
    Object? html = freezed,
    Object? download = freezed,
    Object? downloadLocation = freezed,
  }) {
    return _then(_value.copyWith(
      self: freezed == self
          ? _value.self
          : self // ignore: cast_nullable_to_non_nullable
              as String?,
      html: freezed == html
          ? _value.html
          : html // ignore: cast_nullable_to_non_nullable
              as String?,
      download: freezed == download
          ? _value.download
          : download // ignore: cast_nullable_to_non_nullable
              as String?,
      downloadLocation: freezed == downloadLocation
          ? _value.downloadLocation
          : downloadLocation // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhotoLinksImplCopyWith<$Res>
    implements $PhotoLinksCopyWith<$Res> {
  factory _$$PhotoLinksImplCopyWith(
          _$PhotoLinksImpl value, $Res Function(_$PhotoLinksImpl) then) =
      __$$PhotoLinksImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? self, String? html, String? download, String? downloadLocation});
}

/// @nodoc
class __$$PhotoLinksImplCopyWithImpl<$Res>
    extends _$PhotoLinksCopyWithImpl<$Res, _$PhotoLinksImpl>
    implements _$$PhotoLinksImplCopyWith<$Res> {
  __$$PhotoLinksImplCopyWithImpl(
      _$PhotoLinksImpl _value, $Res Function(_$PhotoLinksImpl) _then)
      : super(_value, _then);

  /// Create a copy of PhotoLinks
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? self = freezed,
    Object? html = freezed,
    Object? download = freezed,
    Object? downloadLocation = freezed,
  }) {
    return _then(_$PhotoLinksImpl(
      self: freezed == self
          ? _value.self
          : self // ignore: cast_nullable_to_non_nullable
              as String?,
      html: freezed == html
          ? _value.html
          : html // ignore: cast_nullable_to_non_nullable
              as String?,
      download: freezed == download
          ? _value.download
          : download // ignore: cast_nullable_to_non_nullable
              as String?,
      downloadLocation: freezed == downloadLocation
          ? _value.downloadLocation
          : downloadLocation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PhotoLinksImpl implements _PhotoLinks {
  const _$PhotoLinksImpl(
      {this.self, this.html, this.download, this.downloadLocation});

  factory _$PhotoLinksImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhotoLinksImplFromJson(json);

  @override
  final String? self;
  @override
  final String? html;
  @override
  final String? download;
  @override
  final String? downloadLocation;

  @override
  String toString() {
    return 'PhotoLinks(self: $self, html: $html, download: $download, downloadLocation: $downloadLocation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoLinksImpl &&
            (identical(other.self, self) || other.self == self) &&
            (identical(other.html, html) || other.html == html) &&
            (identical(other.download, download) ||
                other.download == download) &&
            (identical(other.downloadLocation, downloadLocation) ||
                other.downloadLocation == downloadLocation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, self, html, download, downloadLocation);

  /// Create a copy of PhotoLinks
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoLinksImplCopyWith<_$PhotoLinksImpl> get copyWith =>
      __$$PhotoLinksImplCopyWithImpl<_$PhotoLinksImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhotoLinksImplToJson(
      this,
    );
  }
}

abstract class _PhotoLinks implements PhotoLinks {
  const factory _PhotoLinks(
      {final String? self,
      final String? html,
      final String? download,
      final String? downloadLocation}) = _$PhotoLinksImpl;

  factory _PhotoLinks.fromJson(Map<String, dynamic> json) =
      _$PhotoLinksImpl.fromJson;

  @override
  String? get self;
  @override
  String? get html;
  @override
  String? get download;
  @override
  String? get downloadLocation;

  /// Create a copy of PhotoLinks
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhotoLinksImplCopyWith<_$PhotoLinksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PhotoUrls _$PhotoUrlsFromJson(Map<String, dynamic> json) {
  return _PhotoUrls.fromJson(json);
}

/// @nodoc
mixin _$PhotoUrls {
  String? get raw => throw _privateConstructorUsedError;
  String? get full => throw _privateConstructorUsedError;
  String? get regular => throw _privateConstructorUsedError;
  String? get small => throw _privateConstructorUsedError;
  String? get thumb => throw _privateConstructorUsedError;

  /// Serializes this PhotoUrls to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PhotoUrls
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PhotoUrlsCopyWith<PhotoUrls> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoUrlsCopyWith<$Res> {
  factory $PhotoUrlsCopyWith(PhotoUrls value, $Res Function(PhotoUrls) then) =
      _$PhotoUrlsCopyWithImpl<$Res, PhotoUrls>;
  @useResult
  $Res call(
      {String? raw,
      String? full,
      String? regular,
      String? small,
      String? thumb});
}

/// @nodoc
class _$PhotoUrlsCopyWithImpl<$Res, $Val extends PhotoUrls>
    implements $PhotoUrlsCopyWith<$Res> {
  _$PhotoUrlsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PhotoUrls
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? raw = freezed,
    Object? full = freezed,
    Object? regular = freezed,
    Object? small = freezed,
    Object? thumb = freezed,
  }) {
    return _then(_value.copyWith(
      raw: freezed == raw
          ? _value.raw
          : raw // ignore: cast_nullable_to_non_nullable
              as String?,
      full: freezed == full
          ? _value.full
          : full // ignore: cast_nullable_to_non_nullable
              as String?,
      regular: freezed == regular
          ? _value.regular
          : regular // ignore: cast_nullable_to_non_nullable
              as String?,
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
      thumb: freezed == thumb
          ? _value.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhotoUrlsImplCopyWith<$Res>
    implements $PhotoUrlsCopyWith<$Res> {
  factory _$$PhotoUrlsImplCopyWith(
          _$PhotoUrlsImpl value, $Res Function(_$PhotoUrlsImpl) then) =
      __$$PhotoUrlsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? raw,
      String? full,
      String? regular,
      String? small,
      String? thumb});
}

/// @nodoc
class __$$PhotoUrlsImplCopyWithImpl<$Res>
    extends _$PhotoUrlsCopyWithImpl<$Res, _$PhotoUrlsImpl>
    implements _$$PhotoUrlsImplCopyWith<$Res> {
  __$$PhotoUrlsImplCopyWithImpl(
      _$PhotoUrlsImpl _value, $Res Function(_$PhotoUrlsImpl) _then)
      : super(_value, _then);

  /// Create a copy of PhotoUrls
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? raw = freezed,
    Object? full = freezed,
    Object? regular = freezed,
    Object? small = freezed,
    Object? thumb = freezed,
  }) {
    return _then(_$PhotoUrlsImpl(
      raw: freezed == raw
          ? _value.raw
          : raw // ignore: cast_nullable_to_non_nullable
              as String?,
      full: freezed == full
          ? _value.full
          : full // ignore: cast_nullable_to_non_nullable
              as String?,
      regular: freezed == regular
          ? _value.regular
          : regular // ignore: cast_nullable_to_non_nullable
              as String?,
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
      thumb: freezed == thumb
          ? _value.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PhotoUrlsImpl implements _PhotoUrls {
  const _$PhotoUrlsImpl(
      {this.raw, this.full, this.regular, this.small, this.thumb});

  factory _$PhotoUrlsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhotoUrlsImplFromJson(json);

  @override
  final String? raw;
  @override
  final String? full;
  @override
  final String? regular;
  @override
  final String? small;
  @override
  final String? thumb;

  @override
  String toString() {
    return 'PhotoUrls(raw: $raw, full: $full, regular: $regular, small: $small, thumb: $thumb)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoUrlsImpl &&
            (identical(other.raw, raw) || other.raw == raw) &&
            (identical(other.full, full) || other.full == full) &&
            (identical(other.regular, regular) || other.regular == regular) &&
            (identical(other.small, small) || other.small == small) &&
            (identical(other.thumb, thumb) || other.thumb == thumb));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, raw, full, regular, small, thumb);

  /// Create a copy of PhotoUrls
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoUrlsImplCopyWith<_$PhotoUrlsImpl> get copyWith =>
      __$$PhotoUrlsImplCopyWithImpl<_$PhotoUrlsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhotoUrlsImplToJson(
      this,
    );
  }
}

abstract class _PhotoUrls implements PhotoUrls {
  const factory _PhotoUrls(
      {final String? raw,
      final String? full,
      final String? regular,
      final String? small,
      final String? thumb}) = _$PhotoUrlsImpl;

  factory _PhotoUrls.fromJson(Map<String, dynamic> json) =
      _$PhotoUrlsImpl.fromJson;

  @override
  String? get raw;
  @override
  String? get full;
  @override
  String? get regular;
  @override
  String? get small;
  @override
  String? get thumb;

  /// Create a copy of PhotoUrls
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhotoUrlsImplCopyWith<_$PhotoUrlsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Photo _$PhotoFromJson(Map<String, dynamic> json) {
  return _Photo.fromJson(json);
}

/// @nodoc
mixin _$Photo {
  String get id => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  String? get blurHash => throw _privateConstructorUsedError;
  int? get likes => throw _privateConstructorUsedError;
  bool? get likedByUser => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  PhotoUrls? get urls => throw _privateConstructorUsedError;
  PhotoLinks? get links => throw _privateConstructorUsedError;

  /// Serializes this Photo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Photo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PhotoCopyWith<Photo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoCopyWith<$Res> {
  factory $PhotoCopyWith(Photo value, $Res Function(Photo) then) =
      _$PhotoCopyWithImpl<$Res, Photo>;
  @useResult
  $Res call(
      {String id,
      String? createdAt,
      String? updatedAt,
      int? width,
      int? height,
      String? color,
      String? blurHash,
      int? likes,
      bool? likedByUser,
      String? description,
      User? user,
      PhotoUrls? urls,
      PhotoLinks? links});

  $UserCopyWith<$Res>? get user;
  $PhotoUrlsCopyWith<$Res>? get urls;
  $PhotoLinksCopyWith<$Res>? get links;
}

/// @nodoc
class _$PhotoCopyWithImpl<$Res, $Val extends Photo>
    implements $PhotoCopyWith<$Res> {
  _$PhotoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Photo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? color = freezed,
    Object? blurHash = freezed,
    Object? likes = freezed,
    Object? likedByUser = freezed,
    Object? description = freezed,
    Object? user = freezed,
    Object? urls = freezed,
    Object? links = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      blurHash: freezed == blurHash
          ? _value.blurHash
          : blurHash // ignore: cast_nullable_to_non_nullable
              as String?,
      likes: freezed == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int?,
      likedByUser: freezed == likedByUser
          ? _value.likedByUser
          : likedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      urls: freezed == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as PhotoUrls?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as PhotoLinks?,
    ) as $Val);
  }

  /// Create a copy of Photo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of Photo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PhotoUrlsCopyWith<$Res>? get urls {
    if (_value.urls == null) {
      return null;
    }

    return $PhotoUrlsCopyWith<$Res>(_value.urls!, (value) {
      return _then(_value.copyWith(urls: value) as $Val);
    });
  }

  /// Create a copy of Photo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PhotoLinksCopyWith<$Res>? get links {
    if (_value.links == null) {
      return null;
    }

    return $PhotoLinksCopyWith<$Res>(_value.links!, (value) {
      return _then(_value.copyWith(links: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PhotoImplCopyWith<$Res> implements $PhotoCopyWith<$Res> {
  factory _$$PhotoImplCopyWith(
          _$PhotoImpl value, $Res Function(_$PhotoImpl) then) =
      __$$PhotoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? createdAt,
      String? updatedAt,
      int? width,
      int? height,
      String? color,
      String? blurHash,
      int? likes,
      bool? likedByUser,
      String? description,
      User? user,
      PhotoUrls? urls,
      PhotoLinks? links});

  @override
  $UserCopyWith<$Res>? get user;
  @override
  $PhotoUrlsCopyWith<$Res>? get urls;
  @override
  $PhotoLinksCopyWith<$Res>? get links;
}

/// @nodoc
class __$$PhotoImplCopyWithImpl<$Res>
    extends _$PhotoCopyWithImpl<$Res, _$PhotoImpl>
    implements _$$PhotoImplCopyWith<$Res> {
  __$$PhotoImplCopyWithImpl(
      _$PhotoImpl _value, $Res Function(_$PhotoImpl) _then)
      : super(_value, _then);

  /// Create a copy of Photo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? color = freezed,
    Object? blurHash = freezed,
    Object? likes = freezed,
    Object? likedByUser = freezed,
    Object? description = freezed,
    Object? user = freezed,
    Object? urls = freezed,
    Object? links = freezed,
  }) {
    return _then(_$PhotoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      blurHash: freezed == blurHash
          ? _value.blurHash
          : blurHash // ignore: cast_nullable_to_non_nullable
              as String?,
      likes: freezed == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int?,
      likedByUser: freezed == likedByUser
          ? _value.likedByUser
          : likedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      urls: freezed == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as PhotoUrls?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as PhotoLinks?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PhotoImpl implements _Photo {
  const _$PhotoImpl(
      {required this.id,
      this.createdAt,
      this.updatedAt,
      this.width,
      this.height,
      this.color,
      this.blurHash,
      this.likes,
      this.likedByUser,
      this.description,
      this.user,
      this.urls,
      this.links});

  factory _$PhotoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhotoImplFromJson(json);

  @override
  final String id;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  final int? width;
  @override
  final int? height;
  @override
  final String? color;
  @override
  final String? blurHash;
  @override
  final int? likes;
  @override
  final bool? likedByUser;
  @override
  final String? description;
  @override
  final User? user;
  @override
  final PhotoUrls? urls;
  @override
  final PhotoLinks? links;

  @override
  String toString() {
    return 'Photo(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, width: $width, height: $height, color: $color, blurHash: $blurHash, likes: $likes, likedByUser: $likedByUser, description: $description, user: $user, urls: $urls, links: $links)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.blurHash, blurHash) ||
                other.blurHash == blurHash) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.likedByUser, likedByUser) ||
                other.likedByUser == likedByUser) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.urls, urls) || other.urls == urls) &&
            (identical(other.links, links) || other.links == links));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      createdAt,
      updatedAt,
      width,
      height,
      color,
      blurHash,
      likes,
      likedByUser,
      description,
      user,
      urls,
      links);

  /// Create a copy of Photo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoImplCopyWith<_$PhotoImpl> get copyWith =>
      __$$PhotoImplCopyWithImpl<_$PhotoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhotoImplToJson(
      this,
    );
  }
}

abstract class _Photo implements Photo {
  const factory _Photo(
      {required final String id,
      final String? createdAt,
      final String? updatedAt,
      final int? width,
      final int? height,
      final String? color,
      final String? blurHash,
      final int? likes,
      final bool? likedByUser,
      final String? description,
      final User? user,
      final PhotoUrls? urls,
      final PhotoLinks? links}) = _$PhotoImpl;

  factory _Photo.fromJson(Map<String, dynamic> json) = _$PhotoImpl.fromJson;

  @override
  String get id;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  int? get width;
  @override
  int? get height;
  @override
  String? get color;
  @override
  String? get blurHash;
  @override
  int? get likes;
  @override
  bool? get likedByUser;
  @override
  String? get description;
  @override
  User? get user;
  @override
  PhotoUrls? get urls;
  @override
  PhotoLinks? get links;

  /// Create a copy of Photo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhotoImplCopyWith<_$PhotoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserAccessToken _$UserAccessTokenFromJson(Map<String, dynamic> json) {
  return _UserAccessToken.fromJson(json);
}

/// @nodoc
mixin _$UserAccessToken {
  String get accessToken => throw _privateConstructorUsedError;
  TokenType get tokenType => throw _privateConstructorUsedError;
  Set<OAuthScope> get scope => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this UserAccessToken to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserAccessToken
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserAccessTokenCopyWith<UserAccessToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAccessTokenCopyWith<$Res> {
  factory $UserAccessTokenCopyWith(
          UserAccessToken value, $Res Function(UserAccessToken) then) =
      _$UserAccessTokenCopyWithImpl<$Res, UserAccessToken>;
  @useResult
  $Res call(
      {String accessToken,
      TokenType tokenType,
      Set<OAuthScope> scope,
      DateTime createdAt});
}

/// @nodoc
class _$UserAccessTokenCopyWithImpl<$Res, $Val extends UserAccessToken>
    implements $UserAccessTokenCopyWith<$Res> {
  _$UserAccessTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserAccessToken
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? tokenType = null,
    Object? scope = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: null == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as TokenType,
      scope: null == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as Set<OAuthScope>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserAccessTokenImplCopyWith<$Res>
    implements $UserAccessTokenCopyWith<$Res> {
  factory _$$UserAccessTokenImplCopyWith(_$UserAccessTokenImpl value,
          $Res Function(_$UserAccessTokenImpl) then) =
      __$$UserAccessTokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String accessToken,
      TokenType tokenType,
      Set<OAuthScope> scope,
      DateTime createdAt});
}

/// @nodoc
class __$$UserAccessTokenImplCopyWithImpl<$Res>
    extends _$UserAccessTokenCopyWithImpl<$Res, _$UserAccessTokenImpl>
    implements _$$UserAccessTokenImplCopyWith<$Res> {
  __$$UserAccessTokenImplCopyWithImpl(
      _$UserAccessTokenImpl _value, $Res Function(_$UserAccessTokenImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserAccessToken
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? tokenType = null,
    Object? scope = null,
    Object? createdAt = null,
  }) {
    return _then(_$UserAccessTokenImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: null == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as TokenType,
      scope: null == scope
          ? _value._scope
          : scope // ignore: cast_nullable_to_non_nullable
              as Set<OAuthScope>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserAccessTokenImpl implements _UserAccessToken {
  const _$UserAccessTokenImpl(
      {required this.accessToken,
      required this.tokenType,
      required final Set<OAuthScope> scope,
      required this.createdAt})
      : _scope = scope;

  factory _$UserAccessTokenImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserAccessTokenImplFromJson(json);

  @override
  final String accessToken;
  @override
  final TokenType tokenType;
  final Set<OAuthScope> _scope;
  @override
  Set<OAuthScope> get scope {
    if (_scope is EqualUnmodifiableSetView) return _scope;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_scope);
  }

  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'UserAccessToken(accessToken: $accessToken, tokenType: $tokenType, scope: $scope, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAccessTokenImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.tokenType, tokenType) ||
                other.tokenType == tokenType) &&
            const DeepCollectionEquality().equals(other._scope, _scope) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, tokenType,
      const DeepCollectionEquality().hash(_scope), createdAt);

  /// Create a copy of UserAccessToken
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAccessTokenImplCopyWith<_$UserAccessTokenImpl> get copyWith =>
      __$$UserAccessTokenImplCopyWithImpl<_$UserAccessTokenImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserAccessTokenImplToJson(
      this,
    );
  }
}

abstract class _UserAccessToken implements UserAccessToken {
  const factory _UserAccessToken(
      {required final String accessToken,
      required final TokenType tokenType,
      required final Set<OAuthScope> scope,
      required final DateTime createdAt}) = _$UserAccessTokenImpl;

  factory _UserAccessToken.fromJson(Map<String, dynamic> json) =
      _$UserAccessTokenImpl.fromJson;

  @override
  String get accessToken;
  @override
  TokenType get tokenType;
  @override
  Set<OAuthScope> get scope;
  @override
  DateTime get createdAt;

  /// Create a copy of UserAccessToken
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserAccessTokenImplCopyWith<_$UserAccessTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TrackedDownloadPhoto _$TrackedDownloadPhotoFromJson(Map<String, dynamic> json) {
  return _TrackedDownloadPhoto.fromJson(json);
}

/// @nodoc
mixin _$TrackedDownloadPhoto {
  String get url => throw _privateConstructorUsedError;

  /// Serializes this TrackedDownloadPhoto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TrackedDownloadPhoto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrackedDownloadPhotoCopyWith<TrackedDownloadPhoto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackedDownloadPhotoCopyWith<$Res> {
  factory $TrackedDownloadPhotoCopyWith(TrackedDownloadPhoto value,
          $Res Function(TrackedDownloadPhoto) then) =
      _$TrackedDownloadPhotoCopyWithImpl<$Res, TrackedDownloadPhoto>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class _$TrackedDownloadPhotoCopyWithImpl<$Res,
        $Val extends TrackedDownloadPhoto>
    implements $TrackedDownloadPhotoCopyWith<$Res> {
  _$TrackedDownloadPhotoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrackedDownloadPhoto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrackedDownloadPhotoImplCopyWith<$Res>
    implements $TrackedDownloadPhotoCopyWith<$Res> {
  factory _$$TrackedDownloadPhotoImplCopyWith(_$TrackedDownloadPhotoImpl value,
          $Res Function(_$TrackedDownloadPhotoImpl) then) =
      __$$TrackedDownloadPhotoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$TrackedDownloadPhotoImplCopyWithImpl<$Res>
    extends _$TrackedDownloadPhotoCopyWithImpl<$Res, _$TrackedDownloadPhotoImpl>
    implements _$$TrackedDownloadPhotoImplCopyWith<$Res> {
  __$$TrackedDownloadPhotoImplCopyWithImpl(_$TrackedDownloadPhotoImpl _value,
      $Res Function(_$TrackedDownloadPhotoImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrackedDownloadPhoto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$TrackedDownloadPhotoImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrackedDownloadPhotoImpl implements _TrackedDownloadPhoto {
  const _$TrackedDownloadPhotoImpl({required this.url});

  factory _$TrackedDownloadPhotoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrackedDownloadPhotoImplFromJson(json);

  @override
  final String url;

  @override
  String toString() {
    return 'TrackedDownloadPhoto(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackedDownloadPhotoImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  /// Create a copy of TrackedDownloadPhoto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackedDownloadPhotoImplCopyWith<_$TrackedDownloadPhotoImpl>
      get copyWith =>
          __$$TrackedDownloadPhotoImplCopyWithImpl<_$TrackedDownloadPhotoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrackedDownloadPhotoImplToJson(
      this,
    );
  }
}

abstract class _TrackedDownloadPhoto implements TrackedDownloadPhoto {
  const factory _TrackedDownloadPhoto({required final String url}) =
      _$TrackedDownloadPhotoImpl;

  factory _TrackedDownloadPhoto.fromJson(Map<String, dynamic> json) =
      _$TrackedDownloadPhotoImpl.fromJson;

  @override
  String get url;

  /// Create a copy of TrackedDownloadPhoto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrackedDownloadPhotoImplCopyWith<_$TrackedDownloadPhotoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SearchPhotosQuery _$SearchPhotosQueryFromJson(Map<String, dynamic> json) {
  return _SearchPhotosQuery.fromJson(json);
}

/// @nodoc
mixin _$SearchPhotosQuery {
  SearchPhotosOrderBy get orderBy => throw _privateConstructorUsedError;
  set orderBy(SearchPhotosOrderBy value) => throw _privateConstructorUsedError;
  List<String> get collections => throw _privateConstructorUsedError;
  set collections(List<String> value) => throw _privateConstructorUsedError;

  /// Serializes this SearchPhotosQuery to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchPhotosQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchPhotosQueryCopyWith<SearchPhotosQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchPhotosQueryCopyWith<$Res> {
  factory $SearchPhotosQueryCopyWith(
          SearchPhotosQuery value, $Res Function(SearchPhotosQuery) then) =
      _$SearchPhotosQueryCopyWithImpl<$Res, SearchPhotosQuery>;
  @useResult
  $Res call({SearchPhotosOrderBy orderBy, List<String> collections});
}

/// @nodoc
class _$SearchPhotosQueryCopyWithImpl<$Res, $Val extends SearchPhotosQuery>
    implements $SearchPhotosQueryCopyWith<$Res> {
  _$SearchPhotosQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchPhotosQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderBy = null,
    Object? collections = null,
  }) {
    return _then(_value.copyWith(
      orderBy: null == orderBy
          ? _value.orderBy
          : orderBy // ignore: cast_nullable_to_non_nullable
              as SearchPhotosOrderBy,
      collections: null == collections
          ? _value.collections
          : collections // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchPhotosQueryImplCopyWith<$Res>
    implements $SearchPhotosQueryCopyWith<$Res> {
  factory _$$SearchPhotosQueryImplCopyWith(_$SearchPhotosQueryImpl value,
          $Res Function(_$SearchPhotosQueryImpl) then) =
      __$$SearchPhotosQueryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SearchPhotosOrderBy orderBy, List<String> collections});
}

/// @nodoc
class __$$SearchPhotosQueryImplCopyWithImpl<$Res>
    extends _$SearchPhotosQueryCopyWithImpl<$Res, _$SearchPhotosQueryImpl>
    implements _$$SearchPhotosQueryImplCopyWith<$Res> {
  __$$SearchPhotosQueryImplCopyWithImpl(_$SearchPhotosQueryImpl _value,
      $Res Function(_$SearchPhotosQueryImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchPhotosQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderBy = null,
    Object? collections = null,
  }) {
    return _then(_$SearchPhotosQueryImpl(
      orderBy: null == orderBy
          ? _value.orderBy
          : orderBy // ignore: cast_nullable_to_non_nullable
              as SearchPhotosOrderBy,
      collections: null == collections
          ? _value.collections
          : collections // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$SearchPhotosQueryImpl implements _SearchPhotosQuery {
  _$SearchPhotosQueryImpl(
      {this.orderBy = SearchPhotosOrderBy.relevant,
      this.collections = const []});

  factory _$SearchPhotosQueryImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchPhotosQueryImplFromJson(json);

  @override
  @JsonKey()
  SearchPhotosOrderBy orderBy;
  @override
  @JsonKey()
  List<String> collections;

  @override
  String toString() {
    return 'SearchPhotosQuery(orderBy: $orderBy, collections: $collections)';
  }

  /// Create a copy of SearchPhotosQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchPhotosQueryImplCopyWith<_$SearchPhotosQueryImpl> get copyWith =>
      __$$SearchPhotosQueryImplCopyWithImpl<_$SearchPhotosQueryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchPhotosQueryImplToJson(
      this,
    );
  }
}

abstract class _SearchPhotosQuery implements SearchPhotosQuery {
  factory _SearchPhotosQuery(
      {SearchPhotosOrderBy orderBy,
      List<String> collections}) = _$SearchPhotosQueryImpl;

  factory _SearchPhotosQuery.fromJson(Map<String, dynamic> json) =
      _$SearchPhotosQueryImpl.fromJson;

  @override
  SearchPhotosOrderBy get orderBy;
  set orderBy(SearchPhotosOrderBy value);
  @override
  List<String> get collections;
  set collections(List<String> value);

  /// Create a copy of SearchPhotosQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchPhotosQueryImplCopyWith<_$SearchPhotosQueryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
