import 'package:flutter/material.dart';
import 'package:techassignment3/My_homepage.dart';
import 'package:techassignment3/screens/login.dart';
import 'package:techassignment3/screens/signup.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Signup(),
        '/login': (context) => Login(),
        '/signup': (context) => Signup(),
      },
    );
  }
}
