import 'dart:math';

import 'package:bowling_kata_flutter/features/game/models/frame.dart';
import 'package:bowling_kata_flutter/features/game/services/i_game_service.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IGameService)
class GameService implements IGameService {
  @override
  Future<Frame> roll(Frame currentFrame) async {
    // wait for the gif to finish its animation to emulate a "loading" state
    await Future.delayed(const Duration(seconds: 2));

    late int pinsDown;
    final displayedScores = [...currentFrame.displayedScores];
    final scores = [...currentFrame.scores];

    if (scores.isEmpty) {
      pinsDown = Random().nextInt(10);

      if (pinsDown == 10) {
        displayedScores.add('X');
      } else if (pinsDown == 0) {
        displayedScores.add('-');
      } else {
        displayedScores.add(pinsDown.toString());
      }
    } else if (scores.length == 1) {
      pinsDown = Random().nextInt(10 - scores.first);

      if (pinsDown + scores.first == 10) {
        displayedScores.add('/');
      } else if (pinsDown == 0) {
        displayedScores.add('-');
      } else {
        displayedScores.add(pinsDown.toString());
      }
    }

    scores.add(pinsDown);

    final totalScore = scores.fold(0, (int p, int c) => p + c);

    return currentFrame.copyWith(
      totalScore: totalScore,
      displayedScores: displayedScores,
      scores: scores,
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
