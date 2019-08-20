import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
    // This widget is the root of your application.
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            theme: ThemeData.dark(),
            home: Scaffold(
                appBar: AppBar(
                    title: Row(
                        children: <Widget>[
                            Icon(Icons.menu),
                            Text('EL TIRULO DE LA BARRA')
                        ],
                    )
                ),
                body: HomePage()
            ),
        );
    }
}


class HomePage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Padding(
            padding: EdgeInsets.all(10.0),
            child: list()
        );
    }

    Widget header(){
        return Stack(
            children: <Widget>[
                Container(
                    height: 300.0,
                    width: double.infinity,
                    child: Image.network(
                        'https://http2.mlstatic.com/campos-o-chacras-venta-metan-viejo-D_NQ_NP_938648-MLA31612837402_072019-F.jpg',
                        fit: BoxFit.cover,
                        )
                ),
                Container(
                    height: 300,
                    color: Colors.black38,
                ),
                Positioned(
                    top: 10.0,
                    right: 20.0,
                    child: Text(
                        'METAN - SALTA',
                        style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold
                            ),
                    ),
                )
            ],
        );
    }

    Widget list(){
        return Column(
            children: <Widget>[
                header(),
                dayWidget("lunes", Icons.wb_cloudy, "34°"),
                dayWidget("lunes", Icons.wb_sunny, "34°"),
                dayWidget("lunes", Icons.wb_iridescent, "34°"),
                dayWidget("lunes", Icons.wb_auto, "34°")
            ],
        );
    }

    Widget dayWidget(String day, IconData icon, String temp){
        return Card(
            child: Padding(
                padding: EdgeInsets.all(40.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                        Text(day),
                        Icon(icon),
                        Text(temp)
                    ],
            ),)
        );
    }
}