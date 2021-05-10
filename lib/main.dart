import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audio_cache.dart';

void main()  => runApp(MyApp());


class MyApp extends StatelessWidget {
  void playsound(int notes){
    final player= AudioCache();
    player.play('assets_note$notes.wav');
  }


  Expanded buildkey({Color color, int notes_num}){
   return  Expanded(
      child: FlatButton(
        child: Text('Note $notes_num'),
          color: color,
          onPressed: (){
            playsound(notes_num);
          }
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Xylophone'),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:<Widget> [
              buildkey(color: Colors.red, notes_num: 1),
              buildkey(color: Colors.green, notes_num: 2),
              buildkey(color: Colors.blue, notes_num: 3),
              buildkey(color: Colors.orange, notes_num: 4),
              buildkey(color: Colors.yellow, notes_num: 5),
              buildkey(color: Colors.lightGreen, notes_num: 6),
              buildkey(color: Colors.white, notes_num: 7),
            ],
          )
        ),
      ));
  }
}
