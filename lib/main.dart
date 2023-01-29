import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/note$soundNumber.wav"),
    );
  }

  buildKey(Color color, int soundNumber) {
    Expanded(
        child: GestureDetector(
      onTap: () {
        playSound(soundNumber);
      },
      child: Container(
        color: color,
        width: 24.0,
      ),
    ));
  }

  const XylophoneApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(Colors.red, 1),
              buildKey(Colors.green, 2),
              buildKey(Colors.purple, 3),
              buildKey(Colors.yellowAccent, 4),
              buildKey(Colors.pinkAccent, 5),
              buildKey(Colors.brown, 6),
              buildKey(Colors.greenAccent, 7),
            ],
          ),
        ),
      ),
    );
  }
}
