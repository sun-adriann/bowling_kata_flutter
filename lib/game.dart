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
    int frame = 0;

    for (var i = 0; i < 10; i++) {
      if (_isStrike(frame)) {
        score += 10 + _strikeBonus(frame);
        frame++;
      } else if (_isSpare(frame)) {
        score += 10 + _spareBonus(frame);
        frame += 2;
      } else {
        score += _sumOfRollsInFrame(frame);
        frame += 2;
      }
    }

    return score;
  }
}
