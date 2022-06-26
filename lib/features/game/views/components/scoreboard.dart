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
        return Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...state.frames.map(
                (frame) => _Frame(
                  scores: frame.displayedScores.join(' '),
                  totalScore: frame.totalScore.toString(),
                  isTotalScoreVisible: frame.isTotalScoreVisible,
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

class _Frame extends StatelessWidget {
  final String scores;
  final String totalScore;
  final bool isTotalScoreVisible;

  const _Frame({
    Key? key,
    required this.scores,
    required this.totalScore,
    required this.isTotalScoreVisible,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 36,
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
                width: 10,
                height: 30,
                child: Text(
                  isTotalScoreVisible ? totalScore : '',
                  // style: Theme.of(context).textTheme.headline6,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
