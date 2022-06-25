import 'package:flutter/material.dart';

import 'components/current_frame_score.dart';
import 'components/scoreboard.dart';

class GameView extends StatefulWidget {
  const GameView({super.key});

  @override
  State<GameView> createState() => _GameViewState();
}

class _GameViewState extends State<GameView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bowling Kata')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            const SizedBox(height: 40),
            const Scoreboard(),
            const SizedBox(height: 40),
            const CurrentFrameScore(),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Roll'),
            ),
            const SizedBox(height: 40),
            Text(
              'FINAL SCORE: XXX',
              style: Theme.of(context).textTheme.headline5,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Reset game'),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
