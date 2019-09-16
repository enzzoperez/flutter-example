import 'dart:math';
import 'package:flutter/material.dart';

void main() {
    return runApp(
        MaterialApp(
            home: Scaffold(
                backgroundColor: Colors.red,
                appBar: AppBar(
                    title: Text('Dicee'),
                    backgroundColor: Colors.red,
                ),
                body: DicePage(),
            ),
        ),
    );
}

class DicePage extends StatefulWidget {
    @override
    _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

    var leftDiceCount = 1;
    var rightDiceCounter = 1;

    void changeDice(){
        setState(() {
            leftDiceCount = Random().nextInt(6) + 1;
            rightDiceCounter = Random().nextInt(6) + 1;
        });
    }

    @override
    Widget build(BuildContext context) {
        return Center(
            child: Row(
                children: <Widget>[
                    Expanded(
                        child: FlatButton(
                            onPressed: (){
                                changeDice();
                            },
                            child: Image.asset('assets/img/dice$leftDiceCount.png')
                        ),
                    ),
                    Expanded(
                        child: FlatButton(
                            onPressed: (){
                                changeDice();
                            },
                            child: Image.asset('assets/img/dice$rightDiceCounter.png')
                        ),
                    ),
                ],
            ),
        );
    }
}
