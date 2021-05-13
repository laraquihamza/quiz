import "package:flutter/material.dart";
import 'package:quiz/models/Question.dart';
import 'home.dart';
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Quiz Vrai ou Faux'),
      debugShowCheckedModeBanner: false,
    );
  }
}