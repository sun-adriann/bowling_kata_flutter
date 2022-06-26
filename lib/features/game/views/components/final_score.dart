import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/game_bloc.dart';

class FinalScore extends StatelessWidget {
  const FinalScore({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameBloc, GameState>(
      buildWhen: (previous, current) => previous != current,
      builder: (context, state) {
        if (state.currentFrameIndex != 10) {
          return Container();
        }

        return Column(
          children: [
            Text(
              'Final score: ${state.finalScore}',
              style: Theme.of(context).textTheme.headline3,
            ),
          ],
        );
      },
    );
  }
}
