import 'package:bowling_kata_flutter/game.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late Game game;

  setUp(() {
    game = Game();
  });

  test('Score should be 0 for gutter game', () async {
    game.rollMany([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
    expect(game.score, 0);
  });

  test('Score should be 20 for all ones game', () async {
    game.rollMany([1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]);
    expect(game.score, 20);
  });

  test('Score should be 16 for a spare followed by a 3 ball', () async {
    game.rollMany([8, 2, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
    expect(game.score, 16);
  });

  test('Score should be 24 for a strike followed by a 3 and a 4 ball',
      () async {
    game.rollMany(
        [10, 3, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
    expect(game.score, 24);
  });

  test('Score should be 300 for perfect game', () async {
    game.rollMany([
      10,
      10,
      10,
      10,
      10,
      10,
      10,
      10,
      10,
      10,
      10,
      10,
      10,
      10,
      10,
      10,
      10,
      10,
      10,
      10
    ]);
    expect(game.score, 300);
  });
}
