
import 'package:exampleflut/src/subpage.dart';
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
                body: MyHomePage(),
            ),
        );
    }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    Color backColor = Colors.redAccent;
    String saludo = 'GUIEN SO';
    int count = 0;

    void onclick(){
        List<String> words = ['re', 'mi' ,'fa'];
        print('COUNTTT $count - ${words.length}');
        setState(() {
            saludo = words[count];
            count = count < words.length-1 ? count + 1 : 0;
        });

    }

    @override
    Widget build(BuildContext context) {
        return Container(
            color: backColor,
            child: Center(
                child: Column(
                    children: <Widget>[
                        Text(saludo),
                        RaisedButton(
                            child: Text('BOTON 1'),
                            onPressed: (){
                                onclick();
                            },
                        ),
                        RaisedButton(
                            elevation: 8,
                            child: Text('pasar pagina'),
                            onPressed: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context)=>SecondPage())
                                );
                            },
                        )
                    ],
                ),
            )
        );
    }
}