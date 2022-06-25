import 'package:bowling_kata_flutter/features/game/view/components/final_score.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/game_bloc.dart';
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
          children: const [
            SizedBox(height: 40),
            Scoreboard(),
            SizedBox(height: 40),
            CurrentFrameScore(),
            SizedBox(height: 40),
            FinalScore(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          context.read<GameBloc>().add(const GameEvent.roll());
        },
        label: const Text('Roll'),
        icon: const Icon(Icons.sports_handball_outlined),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
    ;
  }
}
