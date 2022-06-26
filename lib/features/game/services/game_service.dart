import 'dart:math';

import 'package:injectable/injectable.dart';

import '../models/frame.dart';
import 'i_game_service.dart';

@Injectable(as: IGameService)
class GameService implements IGameService {
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

  @override
  Frame rollForFrame(Frame frame) {
    late int pinsDown;
    late String displayScore;

    if (frame.scores.length == 1) {
      pinsDown = Random().nextInt(10 - frame.scores.first);
    } else {
      pinsDown = Random().nextInt(11);
    }

    displayScore = pinsDown.toString();

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

    return frame.copyWith(
      scores: [...frame.scores, pinsDown],
      displayedScores: [...frame.displayedScores, displayScore],
    );
  }
}

// class Game {
//   final List<int> _rolls = List.filled(21, 0);
//   int _currentRoll = 0;

//   void roll(int pinsDown) {
//     _rolls[_currentRoll++] = pinsDown;
//   }

//   void rollMany(List<int> rolls) {
//     for (int pinsDown in rolls) {
//       roll(pinsDown);
//     }
//   }

//   int _sumOfRollsInFrame(int frame) {
//     return _rolls[frame] + _rolls[frame + 1];
//   }

//   bool _isStrike(int frame) {
//     return _rolls[frame] == 10;
//   }

//   bool _isSpare(int frame) {
//     return _rolls[frame] + _rolls[frame + 1] == 10;
//   }

//   int _strikeBonus(int frame) {
//     return _rolls[frame + 1] + _rolls[frame + 2];
//   }

//   int _spareBonus(int frame) {
//     return _rolls[frame + 2];
//   }

//   int get score {
//     int score = 0;
//     int roll = 0;

//     for (var frame = 0; frame < 10; frame++) {
//       if (_isStrike(roll)) {
//         score += 10 + _strikeBonus(roll);
//         roll++;
//       } else if (_isSpare(roll)) {
//         score += 10 + _spareBonus(roll);
//         roll += 2;
//       } else {
//         score += _sumOfRollsInFrame(roll);
//         roll += 2;
//       }
//     }

//     return score;
//   }
// }