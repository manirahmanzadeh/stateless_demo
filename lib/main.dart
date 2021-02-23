
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
                validator: (v){
                  if(v.isEmpty){
                    return "not correct";
                  }else{
                    return null;
                  }
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "first name"
                ),
                onSaved: (v){
                  signUpModel.firstName = v;
                },
                validator: (v){
                  if(v.isEmpty){
                    return "not correct";
                  }else{
                    return null;
                  }
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "last name"
                ),
                onSaved: (v){
                  signUpModel.lastName = v;
                },
                validator: (v){
                  if(v.isEmpty){
                    return "not correct";
                  }else{
                    return null;
                  }
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "city"
                ),
                onSaved: (v){
                  signUpModel.city = v;
                },
                validator: (v){
                  if(v.isEmpty){
                    return "not correct";
                  }else{
                    return null;
                  }
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "password"
                ),
                onSaved: (v){
                  signUpModel.password = v;
                },
                validator: (v){
                  if(v.length<6){
                    return "not correct";
                  }else{
                    return null;
                  }
                },
              ),
              Builder(builder: (BuildContext ctx)=> RaisedButton(
                  child: Text("Sign Up"),
                  onPressed: () {
                    if(formKey.currentState.validate()){
                      formKey.currentState.save();
                    }else{
                      Scaffold.of(ctx).showSnackBar(SnackBar(content: Text("not valid")));
                    }
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


