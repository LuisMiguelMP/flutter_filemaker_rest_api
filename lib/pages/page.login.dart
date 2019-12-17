import 'package:flutter/material.dart';
import 'package:todo/controllers/list.fmscripts.dart';

class LoginPage extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
TextEditingController userController = new TextEditingController();
TextEditingController passwordController = new TextEditingController();
Future<String> scriptList;

@override
Widget build(BuildContext context){
    return Scaffold(
  backgroundColor: Colors.deepOrange,
  body: Padding(padding: EdgeInsets.all(10),
  child: Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      TextFormField(
    controller:userController,
    autofocus:true,
    keyboardType:TextInputType.text,
    style: new TextStyle(color:Colors.white), 
    decoration: InputDecoration(
      labelText: "FileMaker username", 
      labelStyle: TextStyle(color:Colors.white)),
      ),
      Divider(color:Colors.deepOrange),
            TextFormField(
    controller: passwordController,
    autofocus:true,
    obscureText: true,
    keyboardType:TextInputType.text,
    style: new TextStyle(color:Colors.white), 
    decoration: InputDecoration(
      labelText: "FileMaker password", 
      labelStyle: TextStyle(color:Colors.white)),
      ),
      Divider(color:Colors.deepOrange),
      ButtonTheme(height: 51,
      child: RaisedButton(onPressed: () => {getFMScripts(userController,passwordController)},
      child: Text(
        "Enter",
        style: TextStyle(color:Colors.deepOrange),
        ),
        color: Colors.white,
      ),
      ),
    ],
    ),
    ),
  )
    );
}
}

