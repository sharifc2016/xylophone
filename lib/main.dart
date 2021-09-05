import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(
    MyApp(),
  );
}

Expanded buildKey(Color color, int number){
  return Expanded(child: TextButton(
    onPressed: () {
      final player = AudioCache();
      player.play('note$number.wav');
    },
    child: Container(
      color: color,
    ),
  ),);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                buildKey(Colors.red, 1),
                buildKey(Colors.green, 2),
                buildKey(Colors.blue, 3),
                buildKey(Colors.yellow, 4),
                buildKey(Colors.orange, 5),
                buildKey(Colors.black, 6),
                buildKey(Colors.teal, 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
