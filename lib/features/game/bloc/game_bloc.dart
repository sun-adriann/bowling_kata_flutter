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
      resetGame: (_) async => emit(GameState.initial()),
    );
  }

  Future<void> _roll(GameState state, Emitter<GameState> emit) async {
    emit(state.copyWith(activity: GameActivity.loading));

    /// Give the "roll.gif" animation time to play out. This also
    ///  simulates asynchronous fetching of data from somewhere.
    await Future.delayed(const Duration(seconds: 2));

    int frameIndex = state.currentFrameIndex;
    final rolls = [...state.rolls];
    final frames = [...state.frames];

    frames[frameIndex] = gameService.caculateFrameScore(frameIndex, frames);
    rolls.add(frames[frameIndex].scores.last);

    // calculate previous frame scores
    if (frameIndex != 0 && !frames[frameIndex - 1].isTotalScoreVisible) {
      frames[frameIndex - 1] =
          gameService.caculatePreviousFrameScore(frameIndex, frames);
    }

    if (frames[frameIndex].scores.length > 1 ||
        frames[frameIndex].scores.first == 10) {
      frameIndex++;
    }

    emit(state.copyWith(
      activity: GameActivity.idle,
      currentFrameIndex: frameIndex,
      currentRollIndex: state.currentRollIndex + 1,
      rolls: rolls,
      frames: frames,
    ));

    if (state.currentFrameIndex == 10 &&
        frames[frameIndex].scores.length >= 2) {
      // final finalScore = gameService.calculateFinalScore([...state.rolls]);
      // emit(state.copyWith(finalScore: finalScore));
    }
  }
}
