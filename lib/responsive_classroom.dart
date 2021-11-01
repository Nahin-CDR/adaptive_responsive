//Author : Nahin the Coder
//Date   : 01-11-2021
import 'package:flutter/material.dart';

class ResponsiveClassRoom extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ClassRoom(),
    );
  }
}

class ClassRoom extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ClassRoomState ();
  }
}

class ClassRoomState extends State<ClassRoom>{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text("My ClassRoom"),
      ),
      body: OrientationBuilder(
          builder: (context, orienttation){
            if(orienttation == Orientation.portrait)
            {
              return buildPortrait(size);
            }
            else
            {
              return buildLandScape(size);
            }
          }
      ),
    );

  }

  Widget buildPortrait(Size size) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: buildSirContainer(size)),
        Expanded(child: buildMiddleRow()),
        Expanded(child: buildMiddleRow()),
        Expanded(child: buildMiddleRow()),
        Expanded(child: buildMiddleRow()),
        Expanded(child: buildMiddleRow()),
      ],
    );
  }







  //this is method which returns a Container containing Sir in the middle
  buildSirContainer(Size size) {
    return Container(
      width: size.width*0.5,
      height: size.height*0.15,
      child: Icon(Icons.accessibility),
      color: Colors.grey,
    );
  }

  buildMiddleRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            child: Icon(Icons.accessibility),
            color: Colors.red,
            height: 80,
          ),
        ),

        SizedBox(width: 6,),
        Expanded(
          child: Container(
            child: Icon(Icons.accessibility),
            color: Colors.greenAccent,
            height: 80,
          ),
        ),
        SizedBox(width: 6,),
        Expanded(
          child: Container(
            child: Icon(Icons.accessibility),
            color: Colors.red,
            height: 80,
          ),
        ),
        SizedBox(width: 6,),
        Expanded(
          child: Container(
            child: Icon(Icons.accessibility),
            color: Colors.greenAccent,
            height: 80,
          ),
        ),



      ],
    );
  }

  Widget buildLandScape(Size size) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: buildStudentColumn(),
        ),
        SizedBox(
          width: 6,
        ),
        Expanded(
          flex: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: buildSirContainer(size),
              ),
              SizedBox(height: 10,),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.brown,
                ),
              ),
              Expanded(
                child: buildMiddleRow(),
              )
            ],
          ) ,
        ),
        SizedBox(
          width: 5,
        ),
        Expanded(
          flex: 1,
          child: buildStudentColumn(),
        )
      ],
    );

  }

  buildStudentColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Row(
            children: [
              SizedBox(width: 6,),
              Expanded(
                child: Container(
                  child: Icon(Icons.accessibility),
                  color: Colors.blue,
                  height: 80,
                ),
              ),
              SizedBox(width: 6,),
              Expanded(
                child: Container(
                  child: Icon(Icons.accessibility),
                  color: Colors.red,
                  height: 80,
                ),
              ),
              SizedBox(width: 6,)
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              SizedBox(width: 6,),
              Expanded(
                child: Container(
                  child: Icon(Icons.accessibility),
                  color: Colors.orangeAccent,
                  height: 80,
                ),
              ),
              SizedBox(width: 6,),
              Expanded(
                child: Container(
                  child: Icon(Icons.accessibility),
                  color: Colors.blue,
                  height: 80,
                ),
              ),
              SizedBox(width: 6,),
            ],
          )
        ),
        Expanded(
          child: Row(
            children: [
              SizedBox(width: 6,),
              Expanded(
                child: Container(
                  child: Icon(Icons.accessibility),
                  color: Colors.blue,
                  height: 80,
                ),
              ),
              SizedBox(width: 6,),
              Expanded(
                child: Container(
                  child: Icon(Icons.accessibility),
                  color: Colors.red,
                  height: 80,
                ),
              ),
              SizedBox(width: 6,)
            ],
          ),
        ),
        Expanded(
            child: Row(
              children: [
                SizedBox(width: 6,),
                Expanded(
                  child: Container(
                    child: Icon(Icons.accessibility),
                    color: Colors.orangeAccent,
                    height: 80,
                  ),
                ),
                SizedBox(width: 6,),
                Expanded(
                  child: Container(
                    child: Icon(Icons.accessibility),
                    color: Colors.blue,
                    height: 80,
                  ),
                ),
                SizedBox(width: 6,),
              ],
            )
        ),
      ],
    );
  }

}

