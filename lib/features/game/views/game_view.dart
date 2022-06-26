import 'package:flutter/material.dart';

import 'components/roll_buttons.dart';
import 'components/scoreboard.dart';

class GameView extends StatelessWidget {
  const GameView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bowling Kata')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: const [
            SizedBox(height: 20),
            Text('Scoreboard'),
            SizedBox(height: 6),
            Scoreboard(),
            SizedBox(height: 40),
            Text('Tap on the number of pins knocked down'),
            SizedBox(height: 30),
            RollButtons(),
          ],
        ),
      ),
    );
  }
}
