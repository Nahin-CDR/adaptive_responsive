

import 'package:flutter/material.dart';

class SingleRow extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Single Row View"),
        ),
        body: Row(
          children: <Widget> [
            Container(
              height: 200,
              width: 150,
              color: Colors.red,
            ),
            SizedBox(width: 10,),
            Container(
              height: 200,
              width: 150,
              color: Colors.green,
            ),
            SizedBox(width: 10,),
            Container(
              height: 200,
              width: 150,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}

