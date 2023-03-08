import 'package:flutter/material.dart';
import 'loginpage.dart';
import 'feedback.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Flutter Demo',
      //home: LoginPage(),
      home: MultipleChoiceForm(),
    );
  }
}

