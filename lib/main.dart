
import 'package:flutter/material.dart';

void main()=> runApp(
    MaterialApp(
      home: MyHomePage(),
    )
);

class MyHomePage extends StatelessWidget {

  final formKey = GlobalKey<FormState>();

  SignUpModel signUpModel = SignUpModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    labelText: "email"
                ),
                onSaved: (v){
                  signUpModel.email = v;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "first name"
                ),
                onSaved: (v){
                  signUpModel.firstName = v;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "last name"
                ),
                onSaved: (v){
                  signUpModel.lastName = v;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "city"
                ),
                onSaved: (v){
                  signUpModel.city = v;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "password"
                ),
                onSaved: (v){
                  signUpModel.password = v;
                },
              ),
              Builder(builder: (BuildContext ctx)=> RaisedButton(
                  child: Text("Sign Up"),
                  onPressed: () {
                    formKey.currentState.save();
                  }
              ))

            ],
          )
      ),
    );
  }


}

class SignUpModel{
  String email;
  String firstName;
  String lastName;
  String city;
  String password;
  SignUpModel({this.email, this.city, this.firstName, this.lastName, this.password});
}


