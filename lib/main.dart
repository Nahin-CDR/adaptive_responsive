import 'package:adaptive_responsive/single_column.dart';
import 'package:adaptive_responsive/single_row.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SingleRow(); //SingleColumn();
  }
}

