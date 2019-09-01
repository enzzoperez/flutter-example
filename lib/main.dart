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
            home: DefaultTabController(
                length: 4,
                child: Scaffold(
                    floatingActionButton: FloatingActionButton(
                      onPressed: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context)=> SecondPage()
                              )
                          );
                      },
                      backgroundColor: Colors.green,
                      child: Center(child: Icon(Icons.message),),
                    ),
                    appBar: MyBar(),
                    body: TabBarView(
                        children: <Widget>[
                            Center(child: Text('CAMERA'),),
                            listChats(),
                            Center(child: Text('STATUS'),),
                            Center(child: Text('CALLS'),)
                        ],
                    ),
                )
            )
        );
    }

    Widget listChats() {
        return ListView.builder(
            itemCount: 30,
            itemBuilder: (context, index){
                return Column(
                    children: <Widget>[
                        ListTile(
                            onTap: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder:
                                    (context)=>SecondPage()
                                    )
                                );
                            },
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
                        Padding(
                          padding: EdgeInsets.only(left: 70),
                          child: Divider(height: 10,),
                        ),
                    ],
                );
            }
        );
    }
}
