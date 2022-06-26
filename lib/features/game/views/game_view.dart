import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/game_bloc.dart';
import 'components/current_frame_score.dart';
import 'components/final_score.dart';
import 'components/scoreboard.dart';

class GameView extends StatelessWidget {
  const GameView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bowling Kata')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: const [
            SizedBox(height: 12),
            Scoreboard(),
            SizedBox(height: 40),
            CurrentFrameScore(),
            SizedBox(height: 40),
            FinalScore(),
          ],
        ),
      ),
      floatingActionButton: BlocBuilder<GameBloc, GameState>(
        buildWhen: (previous, current) => previous.activity != current.activity,
        builder: (context, state) {
          return FloatingActionButton.extended(
            onPressed: () {
              if (state.activity == GameActivity.idle) {
                context.read<GameBloc>().add(const GameEvent.roll());
              }
            },
            label:
                Text(state.activity == GameActivity.idle ? 'Roll' : 'Rolling'),
            icon: const Icon(Icons.sports_handball_outlined),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
