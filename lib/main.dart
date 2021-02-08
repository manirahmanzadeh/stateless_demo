import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: MyHomePage(),
  ));
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  int _currentIndex = 0;

  List<Widget> pages = [
    Page1(),
    Page2(),
    Page3(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("NavBar Demo"),),
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(

        currentIndex: _currentIndex,


          onTap: (index){
          setState(() {
            _currentIndex = index;
          });
          },


          items: [
            BottomNavigationBarItem(title: Text("Page1"), icon: Icon(Icons.pages)),
            BottomNavigationBarItem(title: Text("Page2"), icon: Icon(Icons.pages)),
            BottomNavigationBarItem(title: Text("Page3"), icon: Icon(Icons.pages)),

          ]),
    );
  }


}



class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.red,);
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.green,);
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.blue,);
  }
}


