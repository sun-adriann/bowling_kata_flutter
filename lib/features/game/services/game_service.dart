import 'dart:math';
import 'package:bowling_kata_flutter/features/game/models/frame.dart';
import 'package:bowling_kata_flutter/features/game/services/i_game_service.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IGameService)
class GameService implements IGameService {
  @override
  Frame caculateFrameScore(int frameIndex, List<Frame> frames) {
    Frame currentFrame = frames[frameIndex];
    int totalScore = 0;
    List<int> rolls = [];
    late int pinsDown;
    final displayedScores = [...currentFrame.displayedScores];
    final scores = [...currentFrame.scores];
    final framesTemp = [...frames];

    /// This is where we mock a "roll"
    if (scores.isEmpty) {
      pinsDown = Random().nextInt(11);

      if (pinsDown == 10) {
        displayedScores.add('X');
      } else if (pinsDown == 0) {
        displayedScores.add('-');
      } else {
        displayedScores.add(pinsDown.toString());
      }
    } else if (scores.length == 1) {
      pinsDown = Random().nextInt(11 - scores.first);

      if (pinsDown + scores.first == 10) {
        displayedScores.add('/');
      } else if (pinsDown == 0) {
        displayedScores.add('-');
      } else {
        displayedScores.add(pinsDown.toString());
      }
    }

    scores.add(pinsDown);

    currentFrame = currentFrame.copyWith(
      scores: scores,
      displayedScores: displayedScores,
    );

    if (frameIndex >= 1) {
      framesTemp.removeWhere((e) => framesTemp.indexOf(e) < frameIndex);
    }

    for (Frame frame in framesTemp) {
      rolls.addAll(frame.scores);
    }

    if (rolls.length < 3) {
      totalScore += currentFrame.scores.reduce((a, b) => a + b);

      return currentFrame.copyWith(
        totalScore: totalScore,
        isTotalScoreVisible: totalScore < 10 && currentFrame.scores.length >= 2,
      );
    }

    if (rolls.first == 10) {
      totalScore += 10 + (rolls[1] + rolls[2]); // bonus for strike
    } else if (rolls[0] + rolls[1] == 10) {
      totalScore += 10 + rolls[2]; // bonus for spare
    }

    return currentFrame.copyWith(
      totalScore: totalScore,
      isTotalScoreVisible: true,
    );
  }

  @override
  Frame caculatePreviousFrameScore(int currentFrameIndex, List<Frame> frames) {
    final previousFrameIndex = currentFrameIndex - 1;
    Frame previousFrame = frames[previousFrameIndex];
    final displayedScores = [...previousFrame.displayedScores];
    final scores = [...previousFrame.scores];
    final framesTemp = [...frames];
    final int? previousIndex =
        previousFrameIndex == 0 ? null : previousFrameIndex - 1;

    previousFrame = previousFrame.copyWith(
      scores: scores,
      displayedScores: displayedScores,
    );

    List<int> rolls = [];
    int totalScore = previousIndex != null
        ? frames[previousIndex].scores.reduce((a, b) => a + b)
        : 0;

    if (previousFrameIndex >= 1) {
      framesTemp.removeWhere((e) => framesTemp.indexOf(e) < previousFrameIndex);
    }

    for (Frame frame in framesTemp) {
      rolls.addAll(frame.scores);
    }

    if (rolls.first == 10) {
      totalScore += 10 + (rolls[1] + rolls[2]); // bonus for strike
    } else if (rolls[0] + rolls[1] == 10) {
      totalScore += 10 + rolls[2]; // bonus for spare
    }

    return previousFrame.copyWith(
      isTotalScoreVisible: true,
      totalScore: totalScore,
    );
  }
}
