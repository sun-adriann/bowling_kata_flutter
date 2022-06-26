part of 'game_bloc.dart';

enum GameActivity { idle, loading }

@freezed
class GameState with _$GameState {
  const factory GameState({
    required List<Frame> frames,
    @Default([]) List<int> rolls,
    @Default(0) int currentFrameIndex,
    @Default(0) int currentRollIndex,
    @Default(GameActivity.idle) GameActivity activity,
  }) = _GameState;

  factory GameState.initial() =>
      _GameState(frames: List.generate(10, (index) => Frame.empty()));
}
