import 'package:flutter/material.dart';

class Scoreboard extends StatefulWidget {
  const Scoreboard({super.key});

  @override
  State<Scoreboard> createState() => _ScoreboardState();
}

class _ScoreboardState extends State<Scoreboard> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        _ScoreboardFrame(),
        _ScoreboardFrame(),
        _ScoreboardFrame(),
        _ScoreboardFrame(),
        _ScoreboardFrame(),
        _ScoreboardFrame(),
        _ScoreboardFrame(),
        _ScoreboardFrame(),
      ],
    );
  }
}

class _ScoreboardFrame extends StatefulWidget {
  const _ScoreboardFrame({Key? key}) : super(key: key);

  @override
  State<_ScoreboardFrame> createState() => _ScoreboardFrameState();
}

class _ScoreboardFrameState extends State<_ScoreboardFrame> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 44,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade400),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 18,
                    child: Text('XXX'),
                  ),
                ],
              ),
              Container(
                width: 10,
                height: 30,
                child: Text(
                  'X',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
