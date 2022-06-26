import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'config/dependency_injection.dart';
import 'features/game/bloc/game_bloc.dart';
import 'features/game/views/game_view.dart';

void main() {
  configureDependencies();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<GameBloc>(create: (_) => sl<GameBloc>()),
      ],
      child: MaterialApp(
        title: 'Bowling Kata',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blueGrey),
        home: const GameView(),
      ),
    );
  }
}
