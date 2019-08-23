import 'package:flutter/material.dart';

const primaryGreen = Color(0xff065E52);

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            home: DefaultTabController(
                length: 4,
                child: Scaffold(
                    floatingActionButton: FloatingActionButton(
                      onPressed: ()=>{},
                      backgroundColor: Colors.green,
                      child: Center(child: Icon(Icons.message),),
                    ),
                    appBar: myBar(),
                    body: homePage(),
                )
            )
        );
    }

    Widget myBar(){
        return AppBar(
            elevation: 8,
            backgroundColor: primaryGreen,
            title: Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                    'WhatsApp',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.w400
                    ),
                ),
            ),
            actions: <Widget>[
                Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Container(
                        width: 250,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                                Icon(Icons.search,size: 27,),
                                SizedBox(width: 20,),
                                Icon(Icons.message, size: 27,),
                                SizedBox(width: 20,),
                                Icon(Icons.more_vert, size: 27,)
                            ],
                        ),
                    )
                )
            ],
            bottom: TabBar(
                    indicatorColor: Colors.white,
                    tabs: <Widget>[
                        Container(
                            child: Icon(Icons.camera_alt),
                        ),
                        Tab(text: 'CHATS',),
                        Tab(text: 'STATUS',),
                        Tab(text: 'CALLS',)
                    ],

                ),
        );
    }

    Widget homePage() {
        return ListView.builder(
            itemCount: 30,
            itemBuilder: (context, index){
                return Column(
                    children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 70),
                          child: Divider(height: 10,),
                        ),
                        ListTile(
                            leading: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Image.network('https://cdn.ciudad.com.ar/sites/default/files/styles/grizzly_galeria/public/nota/2018/03/07/what-homer-simpson-taught-us-about-doughnuts_3k8v.jpg?itok=YbaozsGF'),
                            ),
                            title: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                    Text(
                                        'Homero simpson',
                                        style: TextStyle(
                                          fontSize: 18,
                                            fontWeight: FontWeight.w500
                                        ),
                                    ),
                                    Text(
                                        '15:30',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 14
                                        ),
                                    )
                                ],
                            ),
                            subtitle: Text('ESTE ES mi mensaje responde culiadaso'),
                        ),
                    ],
                );
            }
        );
    }
}