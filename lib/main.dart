import 'package:flutter/material.dart';
import 'package:todo/pages/page.login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FileMaker Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: LoginPage(),
    );
  }
}

