import 'package:flutter/material.dart';

const fontColor = Color(0xff7A68B9);
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            home: HomePage()
        );
    }
}

class HomePage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Color(0xff6219EC),
            appBar: myBar(),
            body: myBody(),
        );
    }

    Widget myBar(){
        return AppBar(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            leading: Row(
                children: <Widget>[
                    SizedBox(width: 30.0,),
                    Icon(Icons.arrow_back_ios),
                ],
            ),
            actions: <Widget>[
                Padding(
                    padding: EdgeInsets.only(right: 17.0),
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                            color: Colors.green.withOpacity(0.4),
                        ),
                        child: MaterialButton(
                            child: Row(
                                children: <Widget>[
                                    Icon(Icons.check, color: Colors.green,),
                                    SizedBox(width: 10.0,),
                                    Text(
                                        'enzo friends',
                                        style: TextStyle(
                                            color: Colors.green,
                                            fontSize: 18.0
                                        ),
                                    )
                                ],
                            ),
                        )
                )
                ),
            ],
        );
    }

    Widget myBody(){
        return Column(
            children: <Widget>[
                userWidget(),
                rectangleWidget(),
                graphicWidget(),
                friendsWidget()
            ],
        );
    }

    Widget userWidget() => Padding(
        padding: EdgeInsets.only(left: 35.0, top: 25.0),
        child: Row(
            children: <Widget>[
                Container(
                    width: 90.0,
                    height: 90.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/matt.jpg'),
                        ),
                    ),
                ),
                SizedBox(width: 30.0,),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                        Text(
                            'Helders',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold
                            ),
                        ),
                        Text(
                            'Matt',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.0,
                                fontWeight: FontWeight.w300
                            ),
                        )
                    ],
                )
            ],
        )
    );

    Widget rectangleWidget(){
        return Padding(
            padding: EdgeInsets.fromLTRB(35, 10, 17, 0),
            child: Container(
                width: double.infinity,
                height: 150.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white
                ),
                child: CustomPaint(
                    painter: PointsPainter(),
                    child: Row(
                        children: <Widget>[
                            Expanded(
                                child: Padding (
                                    padding: EdgeInsets.only(left: 30.0),
                                    child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                            Text('957', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                                            Text('place', style: TextStyle(fontSize: 17, color: fontColor),)
                                        ],
                                    ),
                                )
                            ),
                            Expanded(
                                child: Padding(
                                    padding: EdgeInsets.only(left: 30.0),
                                    child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                            Text('8 500', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                                            Text('points', style: TextStyle(fontSize: 17, color: fontColor))
                                        ],
                                    ),
                                )
                                
                            )
                        ],
                    ),
                )
                
            )
        );
        
    }
    
    Widget graphicWidget() => Expanded(
        child: Container(),
    );

    Widget friendsWidget(){
        return Container(
            margin: EdgeInsets.only(top: 20),
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                color: Colors.white
            ),
            child: Padding(
                padding: EdgeInsets.only(left: 35, right: 17),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                        Text('Friends', style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20
                            ),
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                                Container(
                                    height: 70,
                                    width: 70,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10.0),
                                        image: DecorationImage(
                                            image: AssetImage('assets/matt.jpg'),
                                            fit: BoxFit.cover
                                        ),
                                    ),
                                ),
                                Container(
                                    height: 70,
                                    width: 70,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10.0),
                                        image: DecorationImage(
                                            image: AssetImage('assets/matt.jpg'),
                                            fit: BoxFit.cover
                                        ),
                                    ),
                                ),
                                Container(
                                    height: 70,
                                    width: 70,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10.0),
                                        image: DecorationImage(
                                            image: AssetImage('assets/matt.jpg'),
                                            fit: BoxFit.cover
                                        ),
                                    ),
                                ),
                                Container(
                                    height: 70,
                                    width: 70,
                                    decoration: BoxDecoration(
                                        color: Colors.yellowAccent,
                                        borderRadius: BorderRadius.circular(10.0)
                                    ),
                                    child: Center (child: Text('14',  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),)
                                ),
                            ],
                        )
                    ],
                ),
            )
            
        );
    }


}

class PointsPainter extends CustomPainter {
    Paint _paint = Paint();

    @override
    void paint(Canvas canvas, Size size){
        _paint.color = Colors.deepPurpleAccent.withOpacity(0.5);
        var path = Path();
        path.moveTo(0, 0);
        path.lineTo(size.width / 2, 0);
        path.lineTo((size.width / 2) - 100, size.height);
        path.lineTo(0, size.height);
        path.close();

        canvas.drawPath(path, _paint);
    }

    @override
    bool shouldRepaint(CustomPainter oldDelegate){
        return true;
    }
}