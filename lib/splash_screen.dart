
//Author : Nahin the coder
//Date : 02-11-2021

import 'dart:async';
import 'package:flutter/material.dart';
import 'responsive_classroom.dart';

class MySplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => SecondPage()));
    });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white60,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/image.png'),
            SizedBox(height: 10,),
            Container(
              child: Text("Responsive Class Room",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            CircularProgressIndicator(valueColor: AlwaysStoppedAnimation(Colors.greenAccent),
            ),
          ],
        ),
      ),
    );
  }
}


class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(    // we can return anything we want
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Text("Second Page !",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}


