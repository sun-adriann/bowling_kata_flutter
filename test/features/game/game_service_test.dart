import 'package:bowling_kata_flutter/config/dependency_injection.dart';
import 'package:bowling_kata_flutter/features/game/models/frame.dart';
import 'package:bowling_kata_flutter/features/game/services/i_game_service.dart';
import 'package:bowling_kata_flutter/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUpAll(() {
    configureDependencies(Environment.prod);
  });

  group('GameService', () {
    late IGameService gameService;
    late List<Frame> frames;

    setUp(() {
      gameService = sl<IGameService>();
      frames = List.generate(10, (index) => Frame.empty());
    });

    test('Total score is 300 for perfect game', () {
      late List<Frame> updatedFrames;
      int currentFrameIndex = 0;

      for (int i = 0; i <= 11; i++) {
        frames[currentFrameIndex] =
            gameService.updateFrameForDownedPins(frames[currentFrameIndex], 10);

        updatedFrames = gameService.calculateFramesScores(frames);

        if (currentFrameIndex != 9) {
          currentFrameIndex++;
        }
      }

      expect(updatedFrames.last.totalScore, 300);
    });

    test('Total score is 90 for 10 rolls of 9 and a miss', () {
      late List<Frame> updatedFrames;
      int currentFrameIndex = 0;

      for (int i = 0; i < 20; i++) {
        int roll = 9;

        if (frames[currentFrameIndex].scores.length == 1) {
          roll = 0;
        }

        frames[currentFrameIndex] = gameService.updateFrameForDownedPins(
            frames[currentFrameIndex], roll);

        updatedFrames = gameService.calculateFramesScores(frames);

        if (updatedFrames[currentFrameIndex].scores.length == 2) {
          currentFrameIndex++;
        }
      }

      expect(updatedFrames.last.totalScore, 90);
    });

    test('Total score is 150 for 10 pairs of 5 and spare', () {
      late List<Frame> updatedFrames;
      int currentFrameIndex = 0;

      for (int i = 0; i < 21; i++) {
        frames[currentFrameIndex] =
            gameService.updateFrameForDownedPins(frames[currentFrameIndex], 5);

        updatedFrames = gameService.calculateFramesScores(frames);

        if (updatedFrames[currentFrameIndex].scores.length >= 2 &&
            currentFrameIndex != 9) {
          currentFrameIndex++;
        }
      }

      expect(updatedFrames.last.totalScore, 150);
    });
  });
}
