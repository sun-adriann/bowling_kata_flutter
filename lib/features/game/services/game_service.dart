import 'dart:math';

import 'package:injectable/injectable.dart';

import '../models/frame.dart';
import 'i_game_service.dart';

@Environment('prod')
@Injectable(as: IGameService)
class GameService implements IGameService {
  @override
  Frame updateFrameForDownedPins(Frame frame, int pinsDown) {
    String displayScore = pinsDown.toString();

    frame = frame.copyWith(scores: [...frame.scores, pinsDown]);

    if (pinsDown == 0) {
      displayScore = '-';
    }

    if (pinsDown == 10) {
      displayScore = 'X';
    }

    if (frame.scores.length > 1 &&
        frame.scores.first + frame.scores.last == 10) {
      displayScore = '/';
    }

    if (frame.scores.length > 2) {
      displayScore = pinsDown.toString();
    }

    return frame.copyWith(
      displayedScores: [...frame.displayedScores, displayScore],
    );
  }

  @override
  List<Frame> calculateFramesScores(List<Frame> frames) {
    int roll = 0;
    int score = 0;
    List<int> rolls = [];

    for (Frame frame in frames) {
      rolls.addAll(frame.scores);
    }

    for (int frameIndex = 0; frameIndex < 10; frameIndex++) {
      bool isTotalScoreVisible = false;

      try {
        if (rolls[roll] == 10) {
          score += 10 + rolls[roll + 1] + rolls[roll + 2];
          roll++;
          isTotalScoreVisible = true;
        } else if (rolls[roll] + rolls[roll + 1] == 10) {
          score += 10 + rolls[roll + 2];
          roll += 2;
          isTotalScoreVisible = true;
        } else {
          score += rolls[roll] + rolls[roll + 1];
          roll += 2;
          isTotalScoreVisible = true;
        }
      } catch (e) {
        if (frameIndex == 9 && frames[frameIndex].scores.length > 1) {
          score += frames[frameIndex].scores.reduce((a, b) => a + b);
        }

        if (frames[frameIndex].scores.length == 1) {
          score += frames[frameIndex].scores.first;
        }
      }

      frames[frameIndex] = frames[frameIndex].copyWith(
        totalScore: score,
        isTotalScoreVisible: isTotalScoreVisible,
      );
    }

    return frames;
  }
}
