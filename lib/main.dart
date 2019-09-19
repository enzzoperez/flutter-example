import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
    return runApp(MyApp());
}

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            home: Scaffold(
                body: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                        buttonSound(color: Colors.teal, nsound: 1),
                        buttonSound(color: Colors.red, nsound: 2),
                        buttonSound(color: Colors.deepOrangeAccent, nsound: 3),
                        buttonSound(color: Colors.amberAccent, nsound: 4),
                        buttonSound(color: Colors.cyan, nsound: 5),
                        buttonSound(color: Colors.greenAccent, nsound: 6),
                        buttonSound(color: Colors.indigo, nsound: 7),
                    ],
                ),
            ),
        );
    }

    Widget buttonSound({color: Color, nsound: int}){
        final AudioCache player = AudioCache();
        return Expanded(
            child: FlatButton(
                child: Container(),
                onPressed: (){
                    player.play('note$nsound.wav');
                },
                color: color,
            )
        );
    }
}