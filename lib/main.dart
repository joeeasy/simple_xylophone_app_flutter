import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  List<Color> colorList = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.teal,
    Colors.blue,
    Colors.purple
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: _genratedButtons()
        ),
      ),
    );
  }

  Widget _genratedButtons() =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
          children: List<Widget>.generate(colorList.length, (_index) {

            return Expanded(
              child: FlatButton(
                color: colorList[_index],
                onPressed: () {
                  final player = AudioCache();
                  player.play('note${_index + 1}.wav');
                },
              ),
            );
          })
      );
}
