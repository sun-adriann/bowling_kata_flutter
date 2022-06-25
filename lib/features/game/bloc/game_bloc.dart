import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/frame.dart';

part 'game_event.dart';
part 'game_state.dart';
part 'game_bloc.freezed.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  GameBloc() : super(GameState.initial()) {
    on<GameEvent>(_eventHandler);
  }

  Future<void> _eventHandler(GameEvent event, Emitter<GameState> emit) async {
    event.map(
      roll: (_) async => _roll(state, emit),
      resetGame: (_) async => _resetGame(state, emit),
    );
  }

  Future<void> _roll(GameState state, Emitter<GameState> emit) async {
    late final int pinsDown;
    List<Frame> frames = [...state.frames];
    Frame currentFrame = frames[state.currentFrameIndex];
    int frameIndex = state.currentFrameIndex;

    if (currentFrame.scores.isEmpty) {
      pinsDown = Random().nextInt(10);

      if (pinsDown == 10) {
        currentFrame.displayedScores.add('X');
        frameIndex++;
      } else if (pinsDown == 0) {
        currentFrame.displayedScores.add('-');
      } else {
        currentFrame.displayedScores.add(pinsDown.toString());
      }
    } else if (currentFrame.scores.length == 1) {
      pinsDown = Random().nextInt(10 - currentFrame.scores.first);
      frameIndex++;

      if (pinsDown + currentFrame.scores.first == 10) {
        currentFrame.displayedScores.add('/');
      } else if (pinsDown == 0) {
        currentFrame.displayedScores.add('-');
      } else {
        currentFrame.displayedScores.add(pinsDown.toString());
      }
    }

    final rolls = [...state.rolls];
    rolls.add(pinsDown);
    currentFrame.scores.add(pinsDown);
    currentFrame.totalScore = currentFrame.scores.fold(0, (p, c) => p + c);

    emit(state.copyWith(
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
