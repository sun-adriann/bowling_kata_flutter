import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../models/frame.dart';
import '../services/i_game_service.dart';

part 'game_event.dart';
part 'game_state.dart';
part 'game_bloc.freezed.dart';

@Injectable()
class GameBloc extends Bloc<GameEvent, GameState> {
  final IGameService gameService;

  GameBloc(this.gameService) : super(GameState.initial()) {
    on<GameEvent>(_eventHandler);
  }

  Future<void> _eventHandler(GameEvent event, Emitter<GameState> emit) async {
    await event.map(
      roll: (_) async => _roll(state, emit),
      resetGame: (_) async => _resetGame(state, emit),
    );
  }

  Future<void> _roll(GameState state, Emitter<GameState> emit) async {
    emit(state.copyWith(activity: GameActivity.loading));

    int frameIndex = state.currentFrameIndex;
    final frames = [...state.frames];
    final updatedFrame =
        await gameService.roll(state.frames[state.currentFrameIndex]);
    final rolls = [...state.rolls];

    rolls.add(updatedFrame.scores.last);
    frames[frameIndex] = updatedFrame;

    if (updatedFrame.scores.length > 1) {
      frameIndex++;
    }

    emit(state.copyWith(
      activity: GameActivity.idle,
      currentFrameIndex: frameIndex,
      currentRollIndex: state.currentRollIndex + 1,
      rolls: rolls,
      frames: frames,
    ));
  }

  Future<void> _resetGame(GameState state, Emitter<GameState> emit) async {
    emit(GameState.initial());
  }
}
