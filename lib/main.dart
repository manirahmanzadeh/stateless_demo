


import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: MyHomePage()
    )
  );
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My First App"),
      ),
      body: Center(
        child: Text("I love Flutter"),
      ),
    );
  }
}
