

import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title: "my app",
      home: MyHomePage()
    )
  );
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Container(color: Colors.blue,)),
            Text("My App")
          ],
        ),
      ),
    );
  }
}

