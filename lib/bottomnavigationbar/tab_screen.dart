


import 'package:flutter/cupertino.dart';
import 'package:flutter/src/material/colors.dart';

class TabScreen extends StatelessWidget{

  final Color color;
  TabScreen(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color
      ),
    );
  }

}