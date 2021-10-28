

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleColumn extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Single Column View"),
        ),
        body: Column(
          children: <Widget>[
            Container(
              height: 200,
              width: 150,
              color: Colors.redAccent,
            ),
            SizedBox(height: 10,),
            Container(
              height: 200,
              width: 150,
              color: Colors.blue,
            ),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
