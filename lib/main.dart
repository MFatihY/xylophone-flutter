import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  // void playNote(int noteNum) {
  //   final player = AudioCache();
  //   player.play(
  //       'note$noteNum.wav'); // folder name assumed "assets" by audio_cache
  // }

  Widget xylophoneKey({MaterialColor color, int noteNum}) {
    return Expanded(
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
        ),
        child: SizedBox(),
        onPressed: () {
          final player = AudioCache();
          player.play(
              'note$noteNum.wav'); // folder name assumed "assets" by audio_cache
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                xylophoneKey(color: Colors.red, noteNum: 1),
                xylophoneKey(color: Colors.orange, noteNum: 2),
                xylophoneKey(color: Colors.yellow, noteNum: 3),
                xylophoneKey(color: Colors.green, noteNum: 4),
                xylophoneKey(color: Colors.blue, noteNum: 5),
                xylophoneKey(color: Colors.indigo, noteNum: 6),
                xylophoneKey(color: Colors.purple, noteNum: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
