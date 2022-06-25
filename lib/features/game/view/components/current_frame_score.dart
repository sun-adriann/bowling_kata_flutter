import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/game_bloc.dart';

class CurrentFrameScore extends StatefulWidget {
  const CurrentFrameScore({Key? key}) : super(key: key);

  @override
  State<CurrentFrameScore> createState() => _CurrentFrameScoreState();
}

class _CurrentFrameScoreState extends State<CurrentFrameScore> {
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
              'You knocked \nout ${state.rolls.last} pins!',
              style: Theme.of(context).textTheme.headline3,
              textAlign: TextAlign.center,
            ),
          ],
        );
      },
    );
  }
}
