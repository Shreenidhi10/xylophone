import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int snumber){

    final player=AudioPlayer();
    player.play(UrlSource('note$snumber.wav'),);

    }
   Expanded buildkey({Color color,int snumber}){
    return Expanded(
        child: ElevatedButton(
        color:color,
        onPressed: (){
      playsound(snumber);
    }, child: null,
    ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
               buildkey(color:Colors.red,snumber:1),
              buildkey(color:Colors.orange,snumber:2),
              buildkey(color:Colors.yellow,snumber:3),
              buildkey(color:Colors.green,snumber:4),
              buildkey(color:Colors.teal,snumber:5),
              buildkey(color:Colors.blue,snumber:6),
              buildkey(color:Colors.purple,snumber:7),

              ],

              )
          )
        ),

    );
  }
}
