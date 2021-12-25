import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              // ignore: deprecated_member_use
              FlatButton(
                  minWidth: 400,
                  color: Colors.amber,
                  onPressed: () {
                    final player = AudioCache();
                    player.play('note1.wav');
                  },
                  child: Text('First note')),
              // ignore: deprecated_member_use
              FlatButton(
                  minWidth: 400,
                  color: Colors.purple,
                  onPressed: () {
                    final player = AudioCache();
                    player.play('note2.wav');
                  },
                  child: Text('Second note')),
              // ignore: deprecated_member_use
              FlatButton(
                  minWidth: 400,
                  color: Colors.red,
                  onPressed: () {
                    final player = AudioCache();
                    player.play('note3.wav');
                  },
                  child: Text('Third note')),
              // ignore: deprecated_member_use
              FlatButton(
                  minWidth: 400,
                  color: Colors.green,
                  onPressed: () {
                    final player = AudioCache();
                    player.play('note4.wav');
                  },
                  child: Text('Fourth note')),
              // ignore: deprecated_member_use
              FlatButton(
                  minWidth: 400,
                  color: Colors.blue,
                  onPressed: () {
                    final player = AudioCache();
                    player.play('note5.wav');
                  },
                  child: Text('Fiveth note')),
              // ignore: deprecated_member_use
              FlatButton(
                  minWidth: 400,
                  color: Colors.amber,
                  onPressed: () {
                    final player = AudioCache();
                    player.play('note6.wav');
                  },
                  child: Text('Sixth note')),
              // ignore: deprecated_member_use
              FlatButton(
                  minWidth: 400,
                  color: Colors.cyan,
                  onPressed: () {
                    final player = AudioCache();
                    player.play('note7.wav');
                  },
                  child: Text('Seventh note')),
            ],
          ),
        ),
      ),
    );
  }
}
