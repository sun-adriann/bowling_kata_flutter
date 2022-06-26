part of 'game_bloc.dart';

@freezed
class GameEvent with _$GameEvent {
  const factory GameEvent.roll(int pinsDown) = _Roll;
  const factory GameEvent.resetGame() = _ResetGame;
}