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

    /// Give the "roll.gif" animation time to play out. This also simulates
    /// asynchronous fetching of data from, let's say, an API or something.
    await Future.delayed(const Duration(seconds: 2));

    final rolls = [...state.rolls];
    final frames = [...state.frames];
    int frameIndex = state.currentFrameIndex;
    frames[frameIndex] = gameService.rollForFrame(frames[frameIndex]);
    final updatedFrames = gameService.calculateFramesScores(frames);

    rolls.add(updatedFrames[frameIndex].scores.last);

    if (updatedFrames[frameIndex].scores.length > 1 ||
        updatedFrames[frameIndex].scores.first == 10) {
      frameIndex++;
    }

    emit(state.copyWith(
      activity: GameActivity.idle,
      currentFrameIndex: frameIndex,
      currentRollIndex: state.currentRollIndex + 1,
      rolls: rolls,
      frames: updatedFrames,
    ));
  }
}
