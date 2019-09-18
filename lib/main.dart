import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
    return runApp(MyApp());
}

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        final AudioCache player = AudioCache();

        return MaterialApp(
            home: Container(
            color: Colors.white,
              child: Center(
                child: FlatButton(
                    onPressed: (){
                      player.play('note1.wav');
                    },
                    child: Text('NOTA 1', textDirection: TextDirection.ltr,)
                ),
            ),
          ),
        );
    }
}