class Frame {
  List<int> scores;
  List<String> displayedScores;
  bool isTotalScoreVisible;
  int totalScore;

  Frame({
    required this.scores,
    required this.displayedScores,
    required this.isTotalScoreVisible,
    required this.totalScore,
  });

  factory Frame.empty() => Frame(
        scores: [],
        displayedScores: [],
        isTotalScoreVisible: false,
        totalScore: 0,
      );
}
