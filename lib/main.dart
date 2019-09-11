import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

const primaryGreen = Color(0xff065E52);

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            home: Scaffold(
                body: Container(
                    color: Colors.teal,
                    child: SafeArea(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                                Container(
                                    width: 100,
                                    color: Colors.red,
                                ),
                                Container(
                                    width: 100,
                                    child: Center(
                                        child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[
                                                Container(
                                                    height: 100,
                                                    color: Colors.yellow,
                                                ),
                                                Container(
                                                    height: 100,
                                                    color: Colors.green,
                                                )
                                            ],
                                        ),
                                    ),
                                ),
                                Container(
                                    width: 100,
                                    color: Colors.blueAccent,
                                ),
                            ],
                        ),
                    ),
                )
            ),
        );
    }
}
