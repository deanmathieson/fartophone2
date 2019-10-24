import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

final player = AudioCache();

class XylophoneApp extends StatelessWidget {
  void playSound(i) {
    player.play('fart$i.wav');
  }

  Expanded buildKey(i, j) {
    return Expanded(
      child: FlatButton(
          color: i,
          onPressed: () {
            playSound(j);
          },
          child: null),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            buildKey(Colors.red, 1),
            buildKey(Colors.orange, 2),
            buildKey(Colors.yellow, 3),
            buildKey(Colors.lightGreenAccent, 4),
            buildKey(Colors.lightBlue, 5),
            buildKey(Colors.indigo, 6),
            buildKey(Colors.teal, 7),
          ],
        ),
      ),
    ));
  }
}
