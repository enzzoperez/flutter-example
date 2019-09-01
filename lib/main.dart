
import 'package:exampleflut/src/myBar.dart';
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
                appBar: MyBar(),
                body: ListaUno(),
            ),
        );
    }
}

class ListaUno extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return GridView.count(
            crossAxisCount: 5,
            children: List.generate(30, (index)=>Center(child: Text('GRIDD $index'),))
        );
    }
}
