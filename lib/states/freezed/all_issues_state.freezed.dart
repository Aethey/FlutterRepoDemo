// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'all_issues_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AllIssuesStateTearOff {
  const _$AllIssuesStateTearOff();

  _AllIssuesState call(
      {int page = 1,
      int per_page = 30,
      String sort = 'created',
      String direction = 'desc',
      String since = '',
      String state = 'all',
      String labels = '',
      bool isLoading = true,
      bool isLoadMoreError = false,
      bool isLoadMoreDone = false,
      List<IssueEntity>? issues}) {
    return _AllIssuesState(
      page: page,
      per_page: per_page,
      sort: sort,
      direction: direction,
      since: since,
      state: state,
      labels: labels,
      isLoading: isLoading,
      isLoadMoreError: isLoadMoreError,
      isLoadMoreDone: isLoadMoreDone,
      issues: issues,
    );
  }
}

/// @nodoc
const $AllIssuesState = _$AllIssuesStateTearOff();

/// @nodoc
mixin _$AllIssuesState {
  int get page => throw _privateConstructorUsedError;
  int get per_page => throw _privateConstructorUsedError;
  String get sort => throw _privateConstructorUsedError;
  String get direction => throw _privateConstructorUsedError;
  String get since => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  String get labels => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLoadMoreError => throw _privateConstructorUsedError;
  bool get isLoadMoreDone => throw _privateConstructorUsedError;
  List<IssueEntity>? get issues => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AllIssuesStateCopyWith<AllIssuesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllIssuesStateCopyWith<$Res> {
  factory $AllIssuesStateCopyWith(
          AllIssuesState value, $Res Function(AllIssuesState) then) =
      _$AllIssuesStateCopyWithImpl<$Res>;
  $Res call(
      {int page,
      int per_page,
      String sort,
      String direction,
      String since,
      String state,
      String labels,
      bool isLoading,
      bool isLoadMoreError,
      bool isLoadMoreDone,
      List<IssueEntity>? issues});
}

/// @nodoc
class _$AllIssuesStateCopyWithImpl<$Res>
    implements $AllIssuesStateCopyWith<$Res> {
  _$AllIssuesStateCopyWithImpl(this._value, this._then);

  final AllIssuesState _value;
  // ignore: unused_field
  final $Res Function(AllIssuesState) _then;

  @override
  $Res call({
    Object? page = freezed,
    Object? per_page = freezed,
    Object? sort = freezed,
    Object? direction = freezed,
    Object? since = freezed,
    Object? state = freezed,
    Object? labels = freezed,
    Object? isLoading = freezed,
    Object? isLoadMoreError = freezed,
    Object? isLoadMoreDone = freezed,
    Object? issues = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      per_page: per_page == freezed
          ? _value.per_page
          : per_page // ignore: cast_nullable_to_non_nullable
              as int,
      sort: sort == freezed
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as String,
      direction: direction == freezed
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String,
      since: since == freezed
          ? _value.since
          : since // ignore: cast_nullable_to_non_nullable
              as String,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      labels: labels == freezed
          ? _value.labels
          : labels // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadMoreError: isLoadMoreError == freezed
          ? _value.isLoadMoreError
          : isLoadMoreError // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadMoreDone: isLoadMoreDone == freezed
          ? _value.isLoadMoreDone
          : isLoadMoreDone // ignore: cast_nullable_to_non_nullable
              as bool,
      issues: issues == freezed
          ? _value.issues
          : issues // ignore: cast_nullable_to_non_nullable
              as List<IssueEntity>?,
    ));
  }
}

/// @nodoc
abstract class _$AllIssuesStateCopyWith<$Res>
    implements $AllIssuesStateCopyWith<$Res> {
  factory _$AllIssuesStateCopyWith(
          _AllIssuesState value, $Res Function(_AllIssuesState) then) =
      __$AllIssuesStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int page,
      int per_page,
      String sort,
      String direction,
      String since,
      String state,
      String labels,
      bool isLoading,
      bool isLoadMoreError,
      bool isLoadMoreDone,
      List<IssueEntity>? issues});
}

/// @nodoc
class __$AllIssuesStateCopyWithImpl<$Res>
    extends _$AllIssuesStateCopyWithImpl<$Res>
    implements _$AllIssuesStateCopyWith<$Res> {
  __$AllIssuesStateCopyWithImpl(
      _AllIssuesState _value, $Res Function(_AllIssuesState) _then)
      : super(_value, (v) => _then(v as _AllIssuesState));

  @override
  _AllIssuesState get _value => super._value as _AllIssuesState;

  @override
  $Res call({
    Object? page = freezed,
    Object? per_page = freezed,
    Object? sort = freezed,
    Object? direction = freezed,
    Object? since = freezed,
    Object? state = freezed,
    Object? labels = freezed,
    Object? isLoading = freezed,
    Object? isLoadMoreError = freezed,
    Object? isLoadMoreDone = freezed,
    Object? issues = freezed,
  }) {
    return _then(_AllIssuesState(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      per_page: per_page == freezed
          ? _value.per_page
          : per_page // ignore: cast_nullable_to_non_nullable
              as int,
      sort: sort == freezed
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as String,
      direction: direction == freezed
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String,
      since: since == freezed
          ? _value.since
          : since // ignore: cast_nullable_to_non_nullable
              as String,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      labels: labels == freezed
          ? _value.labels
          : labels // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadMoreError: isLoadMoreError == freezed
          ? _value.isLoadMoreError
          : isLoadMoreError // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadMoreDone: isLoadMoreDone == freezed
          ? _value.isLoadMoreDone
          : isLoadMoreDone // ignore: cast_nullable_to_non_nullable
              as bool,
      issues: issues == freezed
          ? _value.issues
          : issues // ignore: cast_nullable_to_non_nullable
              as List<IssueEntity>?,
    ));
  }
}

/// @nodoc

class _$_AllIssuesState extends _AllIssuesState {
  const _$_AllIssuesState(
      {this.page = 1,
      this.per_page = 30,
      this.sort = 'created',
      this.direction = 'desc',
      this.since = '',
      this.state = 'all',
      this.labels = '',
      this.isLoading = true,
      this.isLoadMoreError = false,
      this.isLoadMoreDone = false,
      this.issues})
      : super._();

  @JsonKey(defaultValue: 1)
  @override
  final int page;
  @JsonKey(defaultValue: 30)
  @override
  final int per_page;
  @JsonKey(defaultValue: 'created')
  @override
  final String sort;
  @JsonKey(defaultValue: 'desc')
  @override
  final String direction;
  @JsonKey(defaultValue: '')
  @override
  final String since;
  @JsonKey(defaultValue: 'all')
  @override
  final String state;
  @JsonKey(defaultValue: '')
  @override
  final String labels;
  @JsonKey(defaultValue: true)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoadMoreError;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoadMoreDone;
  @override
  final List<IssueEntity>? issues;

  @override
  String toString() {
    return 'AllIssuesState(page: $page, per_page: $per_page, sort: $sort, direction: $direction, since: $since, state: $state, labels: $labels, isLoading: $isLoading, isLoadMoreError: $isLoadMoreError, isLoadMoreDone: $isLoadMoreDone, issues: $issues)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AllIssuesState &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.per_page, per_page) ||
                const DeepCollectionEquality()
                    .equals(other.per_page, per_page)) &&
            (identical(other.sort, sort) ||
                const DeepCollectionEquality().equals(other.sort, sort)) &&
            (identical(other.direction, direction) ||
                const DeepCollectionEquality()
                    .equals(other.direction, direction)) &&
            (identical(other.since, since) ||
                const DeepCollectionEquality().equals(other.since, since)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.labels, labels) ||
                const DeepCollectionEquality().equals(other.labels, labels)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isLoadMoreError, isLoadMoreError) ||
                const DeepCollectionEquality()
                    .equals(other.isLoadMoreError, isLoadMoreError)) &&
            (identical(other.isLoadMoreDone, isLoadMoreDone) ||
                const DeepCollectionEquality()
                    .equals(other.isLoadMoreDone, isLoadMoreDone)) &&
            (identical(other.issues, issues) ||
                const DeepCollectionEquality().equals(other.issues, issues)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(per_page) ^
      const DeepCollectionEquality().hash(sort) ^
      const DeepCollectionEquality().hash(direction) ^
      const DeepCollectionEquality().hash(since) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(labels) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isLoadMoreError) ^
      const DeepCollectionEquality().hash(isLoadMoreDone) ^
      const DeepCollectionEquality().hash(issues);

  @JsonKey(ignore: true)
  @override
  _$AllIssuesStateCopyWith<_AllIssuesState> get copyWith =>
      __$AllIssuesStateCopyWithImpl<_AllIssuesState>(this, _$identity);
}

abstract class _AllIssuesState extends AllIssuesState {
  const factory _AllIssuesState(
      {int page,
      int per_page,
      String sort,
      String direction,
      String since,
      String state,
      String labels,
      bool isLoading,
      bool isLoadMoreError,
      bool isLoadMoreDone,
      List<IssueEntity>? issues}) = _$_AllIssuesState;
  const _AllIssuesState._() : super._();

  @override
  int get page => throw _privateConstructorUsedError;
  @override
  int get per_page => throw _privateConstructorUsedError;
  @override
  String get sort => throw _privateConstructorUsedError;
  @override
  String get direction => throw _privateConstructorUsedError;
  @override
  String get since => throw _privateConstructorUsedError;
  @override
  String get state => throw _privateConstructorUsedError;
  @override
  String get labels => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get isLoadMoreError => throw _privateConstructorUsedError;
  @override
  bool get isLoadMoreDone => throw _privateConstructorUsedError;
  @override
  List<IssueEntity>? get issues => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AllIssuesStateCopyWith<_AllIssuesState> get copyWith =>
      throw _privateConstructorUsedError;
}
