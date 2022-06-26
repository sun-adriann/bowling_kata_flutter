import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/game_bloc.dart';

class Scoreboard extends StatelessWidget {
  const Scoreboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameBloc, GameState>(
      buildWhen: (previous, current) => previous != current,
      builder: (context, state) {
        final firstHalf = state.frames.take(5);
        final otherHalf = state.frames.skip(5).take(5);

        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...firstHalf.map(
                  (frame) => _Frame(
                    index: 0,
                    scores: frame.displayedScores.join(' '),
                    totalScore: frame.totalScore.toString(),
                    isTotalScoreVisible: frame.isTotalScoreVisible,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...otherHalf.map(
                  (frame) => _Frame(
                    index: 0,
                    scores: frame.displayedScores.join(' '),
                    totalScore: frame.totalScore.toString(),
                    isTotalScoreVisible: frame.isTotalScoreVisible,
                  ),
                )
              ],
            ),
          ],
        );
      },
    );
  }
}

class _Frame extends StatelessWidget {
  final int index;
  final String scores;
  final String totalScore;
  final bool isTotalScoreVisible;

  const _Frame({
    Key? key,
    required this.index,
    required this.scores,
    required this.totalScore,
    required this.isTotalScoreVisible,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 65,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade400),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 18,
                    child: Text(scores),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
                child: Text(
                  isTotalScoreVisible ? totalScore : '',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
