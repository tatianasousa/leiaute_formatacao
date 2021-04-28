import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              buildContainer('Container 1', Colors.white, 50, 50),
              SizedBox(width: 10,),
              buildContainer('Container 2', Colors.red, 200, 200),
              SizedBox(width: 10,),
              buildContainer('Container 3', Colors.blue, 50, 50),
            ],
          ),
        ),
      ),
    );
  }

  Container buildContainer(String text, Color color, double width, double height){
    return Container(
      width: width,
      height: height,
      color: color,
      child: Text(text),
    );
  }
}