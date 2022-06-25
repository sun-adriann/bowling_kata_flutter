part of 'game_bloc.dart';

@freezed
class GameState with _$GameState {
  const factory GameState({
    @Default(0) int finalScore,
    @Default([]) List<int> rolls,
    @Default(0) int currentFrameCount,
    @Default(0) int currentRollCount,
  }) = _GameState;

 factory GameState.initial() => const _GameState();
}
