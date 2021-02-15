

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

      floatingActionButton: Builder(
        builder: (BuildContext bc)=> FloatingActionButton(
          onPressed: (){
            //this will show a snack bar
            Scaffold.of(bc).showSnackBar(
                SnackBar(content: Text("My SnackBar"))
            );
          }
      ),
      )

    );
  }
}

