import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/game_bloc.dart';

class CurrentFrameScore extends StatelessWidget {
  const CurrentFrameScore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageGif = Image.asset("assets/gifs/roll.gif", width: 300);

    return BlocBuilder<GameBloc, GameState>(
      buildWhen: (previous, current) => previous.activity != current.activity,
      builder: (context, state) {
        String scoreText = '';
        final lastRoll = state.rolls.isEmpty ? null : state.rolls.last;

        if (state.activity == GameActivity.loading) {
          scoreText = 'Rolling...';
        } else if (lastRoll == null) {
          scoreText = '';
        } else if (lastRoll == 1) {
          scoreText = 'You knocked \ndown $lastRoll pin!';
        } else if (lastRoll == 10) {
          scoreText = 'Strike! You \nknocked down \nall the pins!';
        } else if (lastRoll == 0) {
          scoreText = 'Gutter ball. \nYou didn\'t hit \nanything.';
        } else if (lastRoll > 1) {
          scoreText = 'You knocked \ndown $lastRoll pins!';
        }

        return Column(
          children: [
            Text(
              scoreText,
              style: Theme.of(context).textTheme.headline4,
              textAlign: TextAlign.center,
            ),
            Visibility(
              visible: state.activity == GameActivity.loading,
              child: imageGif,
            ),
          ],
        );
      },
    );
  }
}
