part of 'game_bloc.dart';

enum GameActivity { idle, loading }

@freezed
class GameState with _$GameState {
  const factory GameState({
    @Default(0) int finalScore,
    @Default([]) List<int> rolls,
    required List<Frame> frames,
    @Default(0) int currentFrameIndex,
    @Default(0) int currentRollIndex,
    @Default(GameActivity.loading) GameActivity activity,
  }) = _GameState;

  factory GameState.initial() => _GameState(frames: Frame.generateList());
}
