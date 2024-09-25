import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Ballpage(),
      ),
    );

class Ballpage extends StatelessWidget {
  const Ballpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.blue,
      appBar:AppBar(
        backgroundColor: Colors.blue[100],
        title: Text(
          'Ask me Anything'
        ),
      ),
      body: ball(),
    );
  }
}

class ball extends StatefulWidget {
  const ball({Key? key}) : super(key: key);

  @override
  State<ball> createState() => _ballState();
}

class _ballState extends State<ball> {
  int ballNumber=0;
  numberupdate(){
    //ballNumber=Random().nextInt(5)+1;
    setState(() {
      ballNumber=Random().nextInt(5)+1;
    });
  }
   //ballNumber=Random();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          numberupdate();
          print(ballNumber);
        },
        child: Image.asset('images/ball$ballNumber.png')
        ),
    );
  }
}
