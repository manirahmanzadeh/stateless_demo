import 'package:flutter/material.dart';

void main()=> runApp(
  MaterialApp(
    home: MyHomePage(),
  )
);

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Builder(
          builder: (BuildContext ctx)=> FloatingActionButton(
            onPressed: (){
              Scaffold.of(ctx).showSnackBar(
                  SnackBar(content: Text("Sample SnackBar"))
              );
            },
          )
      )
    );
  }
}

