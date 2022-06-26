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
        return Wrap(
          alignment: WrapAlignment.center,
          spacing: 24.0,
          runSpacing: 12.0,
          children: buildPinButtons(state),
        );
      },
    );
  }

  List<Widget> buildPinButtons(GameState state) {
    final currentFrame = state.frames[state.currentFrameIndex];
    int numberOfButtons = 10;
    List<Widget> buttons = [];

    if (state.frames.last == currentFrame) {
      // TODO
    } else {
      if (state.frames.indexOf(currentFrame) != 9 &&
          currentFrame.scores.isNotEmpty) {
        numberOfButtons = numberOfButtons - currentFrame.scores.first;
      }
    }

    // if (frame.scores.length == 1) {
    //   pinsDown = Random().nextInt(10 - frame.scores.first);
    // } else {
    //   pinsDown = Random().nextInt(11);
    // }

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
