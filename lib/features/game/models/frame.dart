import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'frame.freezed.dart';

@freezed
class Frame with _$Frame {
  const Frame._();
  const factory Frame({
    required List<int> scores,
    required List<String> displayedScores,
    required bool isTotalScoreVisible,
    required int totalScore,
  }) = _Frame;

  factory Frame.empty() => const Frame(
        scores: [],
        displayedScores: [],
        isTotalScoreVisible: false,
        totalScore: 0,
      );
}
