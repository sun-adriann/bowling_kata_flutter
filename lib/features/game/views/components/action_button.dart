import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/game_bloc.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameBloc, GameState>(
      buildWhen: (previous, current) => previous != current,
      builder: (context, state) {
        if (state.currentFrameIndex == 9 &&
            state.frames.last.scores.length >= 2) {
          return FloatingActionButton.extended(
            onPressed: () {
              context.read<GameBloc>().add(const GameEvent.resetGame());
            },
            label: const Text('Reset game'),
            icon: const Icon(Icons.refresh),
          );
        }

        return FloatingActionButton.extended(
          onPressed: () {
            if (state.activity == GameActivity.idle) {
              context.read<GameBloc>().add(const GameEvent.roll());
            }
          },
          label: Text(state.activity == GameActivity.idle ? 'Roll' : 'Rolling'),
          icon: const Icon(Icons.sports_handball_outlined),
        );
      },
    );
  }
}
