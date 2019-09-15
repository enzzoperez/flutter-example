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
                body: myBody(),
            ),
        );
    }
    
    Widget myBody(){
        return SafeArea(
            child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xff2b5876), Color(0xff4e4376)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.2, 0.8]
                    )
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                        CircleAvatar(
                            radius: 50.0,
                            backgroundColor: Colors.red,
                            child: Image(image: AssetImage('./assets/diamond.png'),),
                        ),
                        Text('ENZO PEREZ', style: TextStyle(
                            fontFamily: 'Rocksalt',
                            fontSize: 20.0,
                            color: Colors.white
                        ),),
                        Text('REACT NATIVE DEVELOPER', style: TextStyle(
                            fontSize: 17.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                        ),),
                        SizedBox(
                            width: 250,
                            child: Divider(
                                color: Colors.white,
                            ),
                        ),
                        Card(
                            margin: EdgeInsets.only(left: 35, right: 35, top: 10),
                            child: ListTile(
                                leading: Icon(Icons.phone),
                                title: Text('391-239087'),
                            ),
                        ),
                        Card(
                            margin: EdgeInsets.only(left: 35, right: 35, top: 10),
                            child: ListTile(
                                leading: Icon(Icons.mail),
                                title: Text('enzzo@gmail.com'),
                            ),
                        )
                    ],
                ),
            ),
        );
    }
}
