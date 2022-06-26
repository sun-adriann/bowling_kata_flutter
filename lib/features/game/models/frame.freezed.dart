// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'frame.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Frame {
  List<int> get scores => throw _privateConstructorUsedError;
  List<String> get displayedScores => throw _privateConstructorUsedError;
  bool get isTotalScoreVisible => throw _privateConstructorUsedError;
  int get totalScore => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FrameCopyWith<Frame> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FrameCopyWith<$Res> {
  factory $FrameCopyWith(Frame value, $Res Function(Frame) then) =
      _$FrameCopyWithImpl<$Res>;
  $Res call(
      {List<int> scores,
      List<String> displayedScores,
      bool isTotalScoreVisible,
      int totalScore});
}

/// @nodoc
class _$FrameCopyWithImpl<$Res> implements $FrameCopyWith<$Res> {
  _$FrameCopyWithImpl(this._value, this._then);

  final Frame _value;
  // ignore: unused_field
  final $Res Function(Frame) _then;

  @override
  $Res call({
    Object? scores = freezed,
    Object? displayedScores = freezed,
    Object? isTotalScoreVisible = freezed,
    Object? totalScore = freezed,
  }) {
    return _then(_value.copyWith(
      scores: scores == freezed
          ? _value.scores
          : scores // ignore: cast_nullable_to_non_nullable
              as List<int>,
      displayedScores: displayedScores == freezed
          ? _value.displayedScores
          : displayedScores // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isTotalScoreVisible: isTotalScoreVisible == freezed
          ? _value.isTotalScoreVisible
          : isTotalScoreVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      totalScore: totalScore == freezed
          ? _value.totalScore
          : totalScore // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_FrameCopyWith<$Res> implements $FrameCopyWith<$Res> {
  factory _$$_FrameCopyWith(_$_Frame value, $Res Function(_$_Frame) then) =
      __$$_FrameCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<int> scores,
      List<String> displayedScores,
      bool isTotalScoreVisible,
      int totalScore});
}

/// @nodoc
class __$$_FrameCopyWithImpl<$Res> extends _$FrameCopyWithImpl<$Res>
    implements _$$_FrameCopyWith<$Res> {
  __$$_FrameCopyWithImpl(_$_Frame _value, $Res Function(_$_Frame) _then)
      : super(_value, (v) => _then(v as _$_Frame));

  @override
  _$_Frame get _value => super._value as _$_Frame;

  @override
  $Res call({
    Object? scores = freezed,
    Object? displayedScores = freezed,
    Object? isTotalScoreVisible = freezed,
    Object? totalScore = freezed,
  }) {
    return _then(_$_Frame(
      scores: scores == freezed
          ? _value._scores
          : scores // ignore: cast_nullable_to_non_nullable
              as List<int>,
      displayedScores: displayedScores == freezed
          ? _value._displayedScores
          : displayedScores // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isTotalScoreVisible: isTotalScoreVisible == freezed
          ? _value.isTotalScoreVisible
          : isTotalScoreVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      totalScore: totalScore == freezed
          ? _value.totalScore
          : totalScore // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Frame extends _Frame with DiagnosticableTreeMixin {
  const _$_Frame(
      {required final List<int> scores,
      required final List<String> displayedScores,
      required this.isTotalScoreVisible,
      required this.totalScore})
      : _scores = scores,
        _displayedScores = displayedScores,
        super._();

  final List<int> _scores;
  @override
  List<int> get scores {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scores);
  }

  final List<String> _displayedScores;
  @override
  List<String> get displayedScores {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_displayedScores);
  }

  @override
  final bool isTotalScoreVisible;
  @override
  final int totalScore;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Frame(scores: $scores, displayedScores: $displayedScores, isTotalScoreVisible: $isTotalScoreVisible, totalScore: $totalScore)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Frame'))
      ..add(DiagnosticsProperty('scores', scores))
      ..add(DiagnosticsProperty('displayedScores', displayedScores))
      ..add(DiagnosticsProperty('isTotalScoreVisible', isTotalScoreVisible))
      ..add(DiagnosticsProperty('totalScore', totalScore));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Frame &&
            const DeepCollectionEquality().equals(other._scores, _scores) &&
            const DeepCollectionEquality()
                .equals(other._displayedScores, _displayedScores) &&
            const DeepCollectionEquality()
                .equals(other.isTotalScoreVisible, isTotalScoreVisible) &&
            const DeepCollectionEquality()
                .equals(other.totalScore, totalScore));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_scores),
      const DeepCollectionEquality().hash(_displayedScores),
      const DeepCollectionEquality().hash(isTotalScoreVisible),
      const DeepCollectionEquality().hash(totalScore));

  @JsonKey(ignore: true)
  @override
  _$$_FrameCopyWith<_$_Frame> get copyWith =>
      __$$_FrameCopyWithImpl<_$_Frame>(this, _$identity);
}

abstract class _Frame extends Frame {
  const factory _Frame(
      {required final List<int> scores,
      required final List<String> displayedScores,
      required final bool isTotalScoreVisible,
      required final int totalScore}) = _$_Frame;
  const _Frame._() : super._();

  @override
  List<int> get scores => throw _privateConstructorUsedError;
  @override
  List<String> get displayedScores => throw _privateConstructorUsedError;
  @override
  bool get isTotalScoreVisible => throw _privateConstructorUsedError;
  @override
  int get totalScore => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FrameCopyWith<_$_Frame> get copyWith =>
      throw _privateConstructorUsedError;
}
