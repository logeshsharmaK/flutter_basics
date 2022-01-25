


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/BottomNavigationBar/tab_screen.dart';

void main(){
  runApp(BottomNavigationDemo());

}

class BottomNavigationDemo extends StatefulWidget {
  @override
  _BottomNavigationDemoState createState() => _BottomNavigationDemoState();
}

class _BottomNavigationDemoState extends State<BottomNavigationDemo> {

  int currentTabIndex = 0;
  List<Widget> tabs =
  [
    TabScreen(Colors.redAccent),
    TabScreen(Colors.yellow),
    TabScreen(Colors.green)
  ];

  void onTapped(int index){
    setState(() {
      currentTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      home :  Scaffold(
          appBar: AppBar(
            title: Text('Bottom Navigation Bar'),
          ),
          body: tabs[currentTabIndex],
          bottomNavigationBar:  BottomNavigationBar(
            onTap: onTapped,
            currentIndex: currentTabIndex ,
            items: [
              BottomNavigationBarItem(
                backgroundColor: Colors.red,
                  icon: Icon(Icons.home),
                  title: Text('HOME')
              ),
              BottomNavigationBarItem(
                  backgroundColor: Colors.red,
                  icon: Icon(Icons.mail),
                  title: Text('MAIl')
              ), BottomNavigationBarItem(
                 backgroundColor: Colors.red,
                  icon: Icon(Icons.person ),
                  title: Text('PROFILE')
              ), BottomNavigationBarItem(

                  backgroundColor: Colors.red,

                 icon: Icon(Icons.account_balance ),
                title: Text('ACCOUNT')
              )

      ],
          ),
        )
    );
 }
}

