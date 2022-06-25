part of 'game_bloc.dart';

@freezed
class GameState with _$GameState {
  const factory GameState({
    @Default(0) int finalScore,
    @Default([]) List<int> rolls,
    required List<Frame> frames,
    @Default(0) int currentFrameIndex,
    @Default(0) int currentRollIndex,
  }) = _GameState;

  factory GameState.initial() =>
      _GameState(frames: List.generate(10, (_) => Frame.empty()));
}
