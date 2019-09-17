import 'dart:math';
import 'package:flutter/material.dart';

void main() {
    return runApp(BallApp());
}

class BallApp extends StatefulWidget {
    @override
    _BallAppState createState() => _BallAppState();
}

class _BallAppState extends State<BallApp> {
    var countImg = 0;

    void randomImage(){
        setState(() {
            countImg = Random().nextInt(5);
        });
    }

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            home: Scaffold(
                appBar: AppBar(
                    backgroundColor: Colors.teal[800],
                ),
                body: Column(
                  children: <Widget>[
                    Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              stops: [0.3, 1],
                              colors: [Colors.green, Colors.blue])
                          ),
                          child: FlatButton(
                              child: Image.asset('assets/img/ball$countImg.png'),
                              onPressed: (){
                                  randomImage();
                              },
                          ),
                      ),
                    ),
                  ],
                ),
            ),
        );
    }
}
