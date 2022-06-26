import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/game_bloc.dart';

class RollButtons extends StatefulWidget {
  const RollButtons({Key? key}) : super(key: key);

  @override
  State<RollButtons> createState() => _RollButtonsState();
}

class _RollButtonsState extends State<RollButtons> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameBloc, GameState>(
      builder: (context, state) {
        final lastFrameScores = state.frames.last.scores;

        if (lastFrameScores.isNotEmpty) {
          if (lastFrameScores.length == 3 &&
              lastFrameScores.reduce((a, b) => a + b) > 10) {
            return buildFinalScore(state);
          }
        }

        return Wrap(
          alignment: WrapAlignment.center,
          spacing: 24.0,
          runSpacing: 12.0,
          children: buildPinButtons(state),
        );
      },
    );
  }

  Widget buildFinalScore(GameState state) {
    return Column(
      children: [
        Text(
          'Final score: ${state.frames.last.totalScore}',
          style: Theme.of(context).textTheme.headline3,
        ),
        const SizedBox(height: 30),
        ElevatedButton(
          onPressed: () {
            context.read<GameBloc>().add(const GameEvent.resetGame());
          },
          child: const Text('Reset game'),
        ),
        const SizedBox(height: 40),
        Image.asset(
          'assets/gifs/rolling.gif',
          width: 200,
        ),
      ],
    );
  }

  List<Widget> buildPinButtons(GameState state) {
    final currentFrame = state.frames[state.currentFrameIndex];
    int numberOfButtons = 10;
    List<Widget> buttons = [];

    if (state.frames.last == currentFrame) {
      // TODO
    } else if (currentFrame.scores.isNotEmpty) {
      numberOfButtons = numberOfButtons - currentFrame.scores.first;
    }

    for (int index = 0; index <= numberOfButtons; index++) {
      buttons.add(ElevatedButton(
        onPressed: () {
          context.read<GameBloc>().add(GameEvent.roll(index));
        },
        child: Text('$index'),
      ));
    }

    return buttons;
  }
}
