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
        return Wrap(
          children: state.frames
              .map(
                (e) => _Frame(
                  index: state.frames.indexOf(e),
                  scores: e.displayedScores.join(' '),
                  totalScore: e.totalScore.toString(),
                  isTotalScoreVisible: e.isTotalScoreVisible,
                ),
              )
              .toList(),
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
    return SizedBox(
      width: 70,
      height: 60,
      child: Row(
        children: [
          Container(
            width: 70,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade400),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      child: Text(scores),
                    ),
                  ],
                ),
                SizedBox(
                  child: Text(
                    isTotalScoreVisible ? totalScore : '',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
