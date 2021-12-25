import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Expanded buttonSpecs({Color? color, int? playNumber, String? text}) {
    return Expanded(
      // ignore: deprecated_member_use
      child: FlatButton(
          color: color,
          onPressed: () {
            playSound(playNumber!);
          },
          child: Text(text!)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Xylophone by Art.B'),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(28.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buttonSpecs(
                    color: Colors.amber, playNumber: 1, text: 'First note'),
                buttonSpecs(
                    color: Colors.pink, playNumber: 2, text: 'Second note'),
                buttonSpecs(
                    color: Colors.blue, playNumber: 3, text: 'Third note'),
                buttonSpecs(
                    color: Colors.teal, playNumber: 4, text: 'Fourth note'),
                buttonSpecs(
                    color: Colors.orange, playNumber: 5, text: 'Fiveth note'),
                buttonSpecs(
                    color: Colors.red, playNumber: 6, text: 'Sixth note'),
                buttonSpecs(
                    color: Colors.green, playNumber: 7, text: 'Seventh note'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
