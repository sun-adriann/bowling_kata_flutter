// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'game_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GameEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pinsDown) roll,
    required TResult Function() resetGame,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int pinsDown)? roll,
    TResult Function()? resetGame,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pinsDown)? roll,
    TResult Function()? resetGame,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Roll value) roll,
    required TResult Function(_ResetGame value) resetGame,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Roll value)? roll,
    TResult Function(_ResetGame value)? resetGame,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Roll value)? roll,
    TResult Function(_ResetGame value)? resetGame,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameEventCopyWith<$Res> {
  factory $GameEventCopyWith(GameEvent value, $Res Function(GameEvent) then) =
      _$GameEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GameEventCopyWithImpl<$Res> implements $GameEventCopyWith<$Res> {
  _$GameEventCopyWithImpl(this._value, this._then);

  final GameEvent _value;
  // ignore: unused_field
  final $Res Function(GameEvent) _then;
}

/// @nodoc
abstract class _$$_RollCopyWith<$Res> {
  factory _$$_RollCopyWith(_$_Roll value, $Res Function(_$_Roll) then) =
      __$$_RollCopyWithImpl<$Res>;
  $Res call({int pinsDown});
}

/// @nodoc
class __$$_RollCopyWithImpl<$Res> extends _$GameEventCopyWithImpl<$Res>
    implements _$$_RollCopyWith<$Res> {
  __$$_RollCopyWithImpl(_$_Roll _value, $Res Function(_$_Roll) _then)
      : super(_value, (v) => _then(v as _$_Roll));

  @override
  _$_Roll get _value => super._value as _$_Roll;

  @override
  $Res call({
    Object? pinsDown = freezed,
  }) {
    return _then(_$_Roll(
      pinsDown == freezed
          ? _value.pinsDown
          : pinsDown // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Roll with DiagnosticableTreeMixin implements _Roll {
  const _$_Roll(this.pinsDown);

  @override
  final int pinsDown;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameEvent.roll(pinsDown: $pinsDown)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GameEvent.roll'))
      ..add(DiagnosticsProperty('pinsDown', pinsDown));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Roll &&
            const DeepCollectionEquality().equals(other.pinsDown, pinsDown));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pinsDown));

  @JsonKey(ignore: true)
  @override
  _$$_RollCopyWith<_$_Roll> get copyWith =>
      __$$_RollCopyWithImpl<_$_Roll>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pinsDown) roll,
    required TResult Function() resetGame,
  }) {
    return roll(pinsDown);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int pinsDown)? roll,
    TResult Function()? resetGame,
  }) {
    return roll?.call(pinsDown);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pinsDown)? roll,
    TResult Function()? resetGame,
    required TResult orElse(),
  }) {
    if (roll != null) {
      return roll(pinsDown);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Roll value) roll,
    required TResult Function(_ResetGame value) resetGame,
  }) {
    return roll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Roll value)? roll,
    TResult Function(_ResetGame value)? resetGame,
  }) {
    return roll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Roll value)? roll,
    TResult Function(_ResetGame value)? resetGame,
    required TResult orElse(),
  }) {
    if (roll != null) {
      return roll(this);
    }
    return orElse();
  }
}

abstract class _Roll implements GameEvent {
  const factory _Roll(final int pinsDown) = _$_Roll;

  int get pinsDown => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_RollCopyWith<_$_Roll> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResetGameCopyWith<$Res> {
  factory _$$_ResetGameCopyWith(
          _$_ResetGame value, $Res Function(_$_ResetGame) then) =
      __$$_ResetGameCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResetGameCopyWithImpl<$Res> extends _$GameEventCopyWithImpl<$Res>
    implements _$$_ResetGameCopyWith<$Res> {
  __$$_ResetGameCopyWithImpl(
      _$_ResetGame _value, $Res Function(_$_ResetGame) _then)
      : super(_value, (v) => _then(v as _$_ResetGame));

  @override
  _$_ResetGame get _value => super._value as _$_ResetGame;
}

/// @nodoc

class _$_ResetGame with DiagnosticableTreeMixin implements _ResetGame {
  const _$_ResetGame();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameEvent.resetGame()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'GameEvent.resetGame'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ResetGame);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pinsDown) roll,
    required TResult Function() resetGame,
  }) {
    return resetGame();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int pinsDown)? roll,
    TResult Function()? resetGame,
  }) {
    return resetGame?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pinsDown)? roll,
    TResult Function()? resetGame,
    required TResult orElse(),
  }) {
    if (resetGame != null) {
      return resetGame();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Roll value) roll,
    required TResult Function(_ResetGame value) resetGame,
  }) {
    return resetGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Roll value)? roll,
    TResult Function(_ResetGame value)? resetGame,
  }) {
    return resetGame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Roll value)? roll,
    TResult Function(_ResetGame value)? resetGame,
    required TResult orElse(),
  }) {
    if (resetGame != null) {
      return resetGame(this);
    }
    return orElse();
  }
}

abstract class _ResetGame implements GameEvent {
  const factory _ResetGame() = _$_ResetGame;
}

/// @nodoc
mixin _$GameState {
  List<Frame> get frames => throw _privateConstructorUsedError;
  List<int> get rolls => throw _privateConstructorUsedError;
  int get currentFrameIndex => throw _privateConstructorUsedError;
  int get currentRollIndex => throw _privateConstructorUsedError;
  GameActivity get activity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameStateCopyWith<GameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameStateCopyWith<$Res> {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) then) =
      _$GameStateCopyWithImpl<$Res>;
  $Res call(
      {List<Frame> frames,
      List<int> rolls,
      int currentFrameIndex,
      int currentRollIndex,
      GameActivity activity});
}

/// @nodoc
class _$GameStateCopyWithImpl<$Res> implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._value, this._then);

  final GameState _value;
  // ignore: unused_field
  final $Res Function(GameState) _then;

  @override
  $Res call({
    Object? frames = freezed,
    Object? rolls = freezed,
    Object? currentFrameIndex = freezed,
    Object? currentRollIndex = freezed,
    Object? activity = freezed,
  }) {
    return _then(_value.copyWith(
      frames: frames == freezed
          ? _value.frames
          : frames // ignore: cast_nullable_to_non_nullable
              as List<Frame>,
      rolls: rolls == freezed
          ? _value.rolls
          : rolls // ignore: cast_nullable_to_non_nullable
              as List<int>,
      currentFrameIndex: currentFrameIndex == freezed
          ? _value.currentFrameIndex
          : currentFrameIndex // ignore: cast_nullable_to_non_nullable
              as int,
      currentRollIndex: currentRollIndex == freezed
          ? _value.currentRollIndex
          : currentRollIndex // ignore: cast_nullable_to_non_nullable
              as int,
      activity: activity == freezed
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as GameActivity,
    ));
  }
}

/// @nodoc
abstract class _$$_GameStateCopyWith<$Res> implements $GameStateCopyWith<$Res> {
  factory _$$_GameStateCopyWith(
          _$_GameState value, $Res Function(_$_GameState) then) =
      __$$_GameStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Frame> frames,
      List<int> rolls,
      int currentFrameIndex,
      int currentRollIndex,
      GameActivity activity});
}

/// @nodoc
class __$$_GameStateCopyWithImpl<$Res> extends _$GameStateCopyWithImpl<$Res>
    implements _$$_GameStateCopyWith<$Res> {
  __$$_GameStateCopyWithImpl(
      _$_GameState _value, $Res Function(_$_GameState) _then)
      : super(_value, (v) => _then(v as _$_GameState));

  @override
  _$_GameState get _value => super._value as _$_GameState;

  @override
  $Res call({
    Object? frames = freezed,
    Object? rolls = freezed,
    Object? currentFrameIndex = freezed,
    Object? currentRollIndex = freezed,
    Object? activity = freezed,
  }) {
    return _then(_$_GameState(
      frames: frames == freezed
          ? _value._frames
          : frames // ignore: cast_nullable_to_non_nullable
              as List<Frame>,
      rolls: rolls == freezed
          ? _value._rolls
          : rolls // ignore: cast_nullable_to_non_nullable
              as List<int>,
      currentFrameIndex: currentFrameIndex == freezed
          ? _value.currentFrameIndex
          : currentFrameIndex // ignore: cast_nullable_to_non_nullable
              as int,
      currentRollIndex: currentRollIndex == freezed
          ? _value.currentRollIndex
          : currentRollIndex // ignore: cast_nullable_to_non_nullable
              as int,
      activity: activity == freezed
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as GameActivity,
    ));
  }
}

/// @nodoc

class _$_GameState with DiagnosticableTreeMixin implements _GameState {
  const _$_GameState(
      {required final List<Frame> frames,
      final List<int> rolls = const [],
      this.currentFrameIndex = 0,
      this.currentRollIndex = 0,
      this.activity = GameActivity.idle})
      : _frames = frames,
        _rolls = rolls;

  final List<Frame> _frames;
  @override
  List<Frame> get frames {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_frames);
  }

  final List<int> _rolls;
  @override
  @JsonKey()
  List<int> get rolls {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rolls);
  }

  @override
  @JsonKey()
  final int currentFrameIndex;
  @override
  @JsonKey()
  final int currentRollIndex;
  @override
  @JsonKey()
  final GameActivity activity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameState(frames: $frames, rolls: $rolls, currentFrameIndex: $currentFrameIndex, currentRollIndex: $currentRollIndex, activity: $activity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GameState'))
      ..add(DiagnosticsProperty('frames', frames))
      ..add(DiagnosticsProperty('rolls', rolls))
      ..add(DiagnosticsProperty('currentFrameIndex', currentFrameIndex))
      ..add(DiagnosticsProperty('currentRollIndex', currentRollIndex))
      ..add(DiagnosticsProperty('activity', activity));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GameState &&
            const DeepCollectionEquality().equals(other._frames, _frames) &&
            const DeepCollectionEquality().equals(other._rolls, _rolls) &&
            const DeepCollectionEquality()
                .equals(other.currentFrameIndex, currentFrameIndex) &&
            const DeepCollectionEquality()
                .equals(other.currentRollIndex, currentRollIndex) &&
            const DeepCollectionEquality().equals(other.activity, activity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_frames),
      const DeepCollectionEquality().hash(_rolls),
      const DeepCollectionEquality().hash(currentFrameIndex),
      const DeepCollectionEquality().hash(currentRollIndex),
      const DeepCollectionEquality().hash(activity));

  @JsonKey(ignore: true)
  @override
  _$$_GameStateCopyWith<_$_GameState> get copyWith =>
      __$$_GameStateCopyWithImpl<_$_GameState>(this, _$identity);
}

abstract class _GameState implements GameState {
  const factory _GameState(
      {required final List<Frame> frames,
      final List<int> rolls,
      final int currentFrameIndex,
      final int currentRollIndex,
      final GameActivity activity}) = _$_GameState;

  @override
  List<Frame> get frames => throw _privateConstructorUsedError;
  @override
  List<int> get rolls => throw _privateConstructorUsedError;
  @override
  int get currentFrameIndex => throw _privateConstructorUsedError;
  @override
  int get currentRollIndex => throw _privateConstructorUsedError;
  @override
  GameActivity get activity => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_GameStateCopyWith<_$_GameState> get copyWith =>
      throw _privateConstructorUsedError;
}
