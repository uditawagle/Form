import 'package:flutter/material.dart';
import 'package:login/LoginScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter login UI ",
      home: LoginScreen(),
    );
  }
}

