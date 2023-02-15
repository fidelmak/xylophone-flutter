import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              TextButton(
                onPressed: () {
                  playSound(1);
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                  primary: Colors.white,
                ),
                child: Text(
                  'click me',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  playSound(2);
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green[400],
                  primary: Colors.white,
                ),
                child: Text(
                  'click me',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  playSound(3);
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue[300],
                  primary: Colors.white,
                ),
                child: Text(
                  'click me',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  playSound(4);
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green[400],
                  primary: Colors.white,
                ),
                child: Text(
                  'click me',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  playSound(5);
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                  primary: Colors.white,
                ),
                child: Text(
                  'click me',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  playSound(6);
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.purple[300],
                  primary: Colors.white,
                ),
                child: Text(
                  'click me',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  playSound(7);
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.amber[300],
                  primary: Colors.white,
                ),
                child: Text(
                  'click me',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  playSound(1);
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red[300],
                  primary: Colors.white,
                ),
                child: Text(
                  'click me',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
