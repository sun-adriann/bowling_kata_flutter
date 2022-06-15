import 'package:bowling_kata_flutter/game.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late Game game;

  setUp(() {
    game = Game();
  });

  // (When scoring “X” indicates a strike, “/” indicates a spare, “-” indicates a miss)

  // X X X X X X X X X X X X (12 rolls: 12 strikes) = 10 frames * 30 points = 300
  test('Score should be 300', () async {
    game.rollMany([10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10]);
    expect(game.score, 300);
  });

  // 9- 9- 9- 9- 9- 9- 9- 9- 9- 9- (20 rolls: 10 pairs of 9 and miss) = 10 frames * 9 points = 90
  test('Score should be 90', () async {
    game.rollMany([9, 0, 9, 0, 9, 0, 9, 0, 9, 0, 9, 0, 9, 0, 9, 0, 9, 0, 9, 0]);
    expect(game.score, 90);
  });

  // 5/ 5/ 5/ 5/ 5/ 5/ 5/ 5/ 5/ 5/5 (21 rolls: 10 pairs of 5 and spare, with a final 5) = 10 frames * 15 points = 150
  test('Score should be 150', () async {
    game.rollMany([5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5]);
    expect(game.score, 150);
  });
}
