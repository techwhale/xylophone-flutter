import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatefulWidget {
  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Widget buildKey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
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
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(color: Colors.blue, soundNumber: 1),
                buildKey(color: Colors.green, soundNumber: 2),
                buildKey(color: Colors.yellow, soundNumber: 3),
                buildKey(color: Colors.orange, soundNumber: 4),
                buildKey(color: Colors.red, soundNumber: 5),
                buildKey(color: Colors.blueGrey, soundNumber: 6),
                buildKey(color: Colors.brown, soundNumber: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
//child: Center(
//child: FlatButton(
//onPressed: () {
//final player = AudioCache();
//player.play('note1.wav');
//},
//child: Text('Click Me'),
//),
//),
