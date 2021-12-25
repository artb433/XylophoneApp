import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // ignore: deprecated_member_use
              FlatButton(
                  minWidth: 400,
                  color: Colors.amber,
                  onPressed: () {
                    playSound(1);
                  },
                  child: Text('First note')),
              // ignore: deprecated_member_use
              FlatButton(
                  minWidth: 400,
                  color: Colors.purple,
                  onPressed: () {
                    playSound(2);
                  },
                  child: Text('Second note')),
              // ignore: deprecated_member_use
              FlatButton(
                  minWidth: 400,
                  color: Colors.red,
                  onPressed: () {
                    playSound(3);
                  },
                  child: Text('Third note')),
              // ignore: deprecated_member_use
              FlatButton(
                  minWidth: 400,
                  color: Colors.green,
                  onPressed: () {
                    playSound(4);
                  },
                  child: Text('Fourth note')),
              // ignore: deprecated_member_use
              FlatButton(
                  minWidth: 400,
                  color: Colors.blue,
                  onPressed: () {
                    playSound(5);
                  },
                  child: Text('Fiveth note')),
              // ignore: deprecated_member_use
              FlatButton(
                  minWidth: 400,
                  color: Colors.yellow,
                  onPressed: () {
                    playSound(6);
                  },
                  child: Text('Sixth note')),
              // ignore: deprecated_member_use
              FlatButton(
                  minWidth: 400,
                  color: Colors.cyan,
                  onPressed: () {
                    playSound(7);
                  },
                  child: Text('Seventh note')),
            ],
          ),
        ),
      ),
    );
  }
}
