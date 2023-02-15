import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey({
    required Color color,
    required int soundNumber,
  }) {
    return Expanded(
        child: TextButton(
      onPressed: () {
        playSound(soundNumber);
      },
      style: TextButton.styleFrom(
        backgroundColor: color,
        primary: Colors.white,
      ),
      child: Text(
        'play sound 😊',
        style: TextStyle(fontSize: 24),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, soundNumber: 1),
              SizedBox(height: 10),
              buildKey(color: Colors.green, soundNumber: 2),
              SizedBox(height: 10),
              buildKey(color: Colors.blue, soundNumber: 3),
              SizedBox(height: 10),
              buildKey(color: Colors.indigo, soundNumber: 4),
              SizedBox(height: 10),
              buildKey(color: Color.fromARGB(255, 112, 101, 1), soundNumber: 5),
              SizedBox(height: 10),
              buildKey(color: Colors.pink, soundNumber: 6),
              SizedBox(height: 10),
              buildKey(color: Colors.purple, soundNumber: 7),
              SizedBox(height: 10),
              buildKey(color: Colors.red, soundNumber: 1),
            ],
          ),
        ),
      ),
    );
  }
}
