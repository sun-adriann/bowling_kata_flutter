import 'package:flutter/material.dart';

import 'components/action_button.dart';
import 'components/current_frame_score.dart';
import 'components/final_score.dart';
import 'components/scoreboard.dart';

class GameView extends StatelessWidget {
  const GameView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bowling Kata')),
      body: Column(
        children: const [
          SizedBox(height: 40),
          Scoreboard(),
          SizedBox(height: 40),
          CurrentFrameScore(),
          SizedBox(height: 40),
          FinalScore(),
        ],
      ),
      floatingActionButton: const ActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
