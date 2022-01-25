

// this file contains BottomNavigationBar

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_basics/BottomNavigationBar/second_tab.dart';
import 'package:flutter_basics/BottomNavigationBar/third_tab.dart';
import 'first_tab.dart';

void main(){
  runApp(BottomNavigationDemo());
}

class BottomNavigationDemo extends StatefulWidget {
  // BottomNavigationDemo() : super();

  final String title = "Bottom Navigation Demo";

  @override
  BottomNavigationDemoState createState() => BottomNavigationDemoState();
}

class BottomNavigationDemoState extends State<BottomNavigationDemo>
    with SingleTickerProviderStateMixin {
  //

  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation Demo"),
      ),
      body: TabBarView(
        children: <Widget>[
          FirstTab(),
          SecondTab(),
          ThirdTab(),
        ],
        controller: controller,
      ),
      bottomNavigationBar: Material(
        color: Colors.blue,
        child: TabBar(
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.favorite),
            ),
            Tab(
              icon: Icon(Icons.add),
            ),
            Tab(
              icon: Icon(Icons.airport_shuttle),
            ),
          ],
          controller: controller,
        ),
      ),
    );
  }
}

