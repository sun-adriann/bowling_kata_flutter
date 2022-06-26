import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/game_bloc.dart';

class CurrentFrameScore extends StatelessWidget {
  const CurrentFrameScore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameBloc, GameState>(
      buildWhen: (previous, current) => previous.activity != current.activity,
      builder: (context, state) {
        if (state.currentRollIndex == 0) {
          return const SizedBox();
        }

        if (state.activity == GameActivity.loading) {
          return Image.asset("assets/gifs/roll.gif");
        }

        late String scoreText;

        if (state.rolls.last == 1) {
          scoreText = 'You knocked \nout ${state.rolls.last} pin!';
        } else if (state.rolls.last == 10) {
          scoreText = 'Strike! You \nknocked out all the pins!';
        } else if (state.rolls.last == 0) {
          scoreText = 'Gutter ball. \nYou didn\'t hit \nanything.';
        } else {
          scoreText = 'You knocked \nout ${state.rolls.last} pins!';
        }

        return Column(
          children: [
            Text(
              scoreText,
              style: Theme.of(context).textTheme.headline4,
              textAlign: TextAlign.center,
            ),
          ],
        );
      },
    );
  }
}
