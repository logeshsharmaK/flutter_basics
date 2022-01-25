

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/navigationdrawer/mail.dart';
import 'package:flutter_basics/navigationdrawer/profile.dart';

import 'home.dart';

void main(){
  runApp(NavigationDrawerApp());
}

class NavigationDrawerApp extends StatefulWidget {
  @override
  _NavigationDrawerAppState createState() => _NavigationDrawerAppState();
}

class _NavigationDrawerAppState extends State<NavigationDrawerApp> {

  int index = 0;
  List<Widget> list =[
    Home(),
    Profile(),
    Mail()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Navigation Drawer"),

        ),
        body: list[index],
        drawer: MyDrawer(onTap: (ctx,i)
        {
          setState(() {
            index = i;
            Navigator.pop(ctx);
          });
        })
      ),
    );
  }
}

class MyDrawer extends StatelessWidget {

  final Function onTap;

  MyDrawer({this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width*0.8,
      child: Drawer(
        child: Column(
          crossAxisAlignment:  CrossAxisAlignment.stretch,
          children: <Widget>[
            DrawerHeader(
              decoration:  BoxDecoration(color: Colors.blue),
              child: Padding(
                padding: EdgeInsets.all(6),
                child: Column(
                  crossAxisAlignment:  CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      width: 60,
                      height: 60,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('images/Logeshsharma_profile.jpg'),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text("logeshsharma@gmail.com",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12
                    ),
                    )
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () => onTap(context,0),

            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () => onTap(context,1),

            ),ListTile(
              leading: Icon(Icons.mail),
              title: Text('Mail'),
              onTap: () => onTap(context,2),

            ),
            Divider(height: 1,),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),
              onTap: () => onTap(context,3),

            )
          ],
        ),
      ),
    );
  }
}
