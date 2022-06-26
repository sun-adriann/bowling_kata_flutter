import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'frame.freezed.dart';

@freezed
class Frame with _$Frame {
  const Frame._();
  const factory Frame({
    required int index,
    required List<int> scores,
    required List<String> displayedScores,
    required bool isTotalScoreVisible,
    required int totalScore,
  }) = _Frame;

  factory Frame.fromIndex(int index) => Frame(
        index: index,
        scores: [],
        displayedScores: [],
        isTotalScoreVisible: false,
        totalScore: 0,
      );

  static List<Frame> generateList() {
    List<Frame> list = [];

    for (var i = 0; i < 9; i++) {
      list.add(Frame.fromIndex(i));
    }

    return list;
  }
}
