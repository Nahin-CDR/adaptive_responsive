import 'dart:async';

import 'package:adaptive_responsive/single_column.dart';
import 'package:adaptive_responsive/single_row.dart';
import 'package:flutter/material.dart';

import 'responsive_classroom.dart';
import 'splash_screen.dart';


// Point to be Noted

/*

1 - Single Row
2 - Single Column
3 - Responsive Class Room
4 - Navigation drawer
5 - TabBar
6 - Animation

*/




void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MySplashScreen();   //ResponsiveClassRoom(); //SingleRow(); //SingleColumn();
  }
}

