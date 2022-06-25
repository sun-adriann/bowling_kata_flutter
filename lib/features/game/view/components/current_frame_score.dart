import 'package:flutter/material.dart';

class CurrentFrameScore extends StatefulWidget {
  const CurrentFrameScore({Key? key}) : super(key: key);

  @override
  State<CurrentFrameScore> createState() => _CurrentFrameScoreState();
}

class _CurrentFrameScoreState extends State<CurrentFrameScore> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'YOU KNOCKED OUT',
          style: Theme.of(context).textTheme.headline6,
        ),
        Center(
          child: Text('XX', style: Theme.of(context).textTheme.headline1),
        ),
        Text(
          'PINS!',
          style: Theme.of(context).textTheme.headline6,
        ),
      ],
    );
  }
}
