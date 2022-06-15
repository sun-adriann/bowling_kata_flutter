class Game {
  final List<int> _rolls = List.filled(21, 0);
  int _currentRoll = 0;

  void roll(int pinsDown) {
    _rolls[_currentRoll++] = pinsDown;
  }

  void rollMany(List<int> rolls) {
    for (int pinsDown in rolls) {
      roll(pinsDown);
    }
  }

  int _sumOfRollsInFrame(int frame) {
    return _rolls[frame] + _rolls[frame + 1];
  }

  bool _isStrike(int frame) {
    return _rolls[frame] == 10;
  }

  bool _isSpare(int frame) {
    return _rolls[frame] + _rolls[frame + 1] == 10;
  }

  int _strikeBonus(int frame) {
    return _rolls[frame + 1] + _rolls[frame + 2];
  }

  int _spareBonus(int frame) {
    return _rolls[frame + 2];
  }

  int get score {
    int score = 0;
    int roll = 0;

    for (var frame = 0; frame < 10; frame++) {
      if (_isStrike(roll)) {
        score += 10 + _strikeBonus(roll);
        roll++;
      } else if (_isSpare(roll)) {
        score += 10 + _spareBonus(roll);
        roll += 2;
      } else {
        score += _sumOfRollsInFrame(roll);
        roll += 2;
      }
    }

    return score;
  }
}
