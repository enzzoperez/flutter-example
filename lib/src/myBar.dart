import 'package:flutter/material.dart';

class MyBar extends StatelessWidget with PreferredSizeWidget {

    @override
    Widget build(BuildContext context) {
        return AppBar(
            elevation: 8,
            backgroundColor: Colors.blueGrey,
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
            // bottom: TabBar(
            //         indicatorColor: Colors.white,
            //         tabs: <Widget>[
            //             Container(
            //                 child: Icon(Icons.camera_alt),
            //             ),
            //             Tab(text: 'CHATS',),
            //             Tab(text: 'STATUS',),
            //             Tab(text: 'CALLS',)
            //         ],

            //     ),
        );
    }

    @override
    Size get preferredSize => Size.fromHeight(kToolbarHeight);
}