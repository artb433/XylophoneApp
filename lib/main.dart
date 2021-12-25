import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
              // ignore: deprecated_member_use
              child: FlatButton(
                  onPressed: () {
                    // or as a local variable
                    final player = AudioCache();

                    // call this method when desired
                    player.play('explosion.mp3');
                  },
                  child: Text('Play Music'))),
        ),
      ),
    );
  }
}
