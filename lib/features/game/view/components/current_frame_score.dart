import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/game_bloc.dart';

class CurrentFrameScore extends StatelessWidget {
  const CurrentFrameScore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameBloc, GameState>(
      buildWhen: (previous, current) => previous != current,
      builder: (context, state) {
        if (state.currentRollIndex == 0) {
          return const SizedBox();
        }

        return Column(
          children: [
            Text(
              state.rolls.last == 1
                  ? 'You knocked \nout ${state.rolls.last} pin!'
                  : 'You knocked \nout ${state.rolls.last} pins!',
              style: Theme.of(context).textTheme.headline3,
              textAlign: TextAlign.center,
            ),
          ],
        );
      },
    );
  }
}
