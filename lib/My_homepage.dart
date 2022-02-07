// ignore_for_file: prefer_const_constructors


import 'package:flutter/material.dart';
import 'package:techassignment3/components/reusable_button.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // late double height, width;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(30),
          width: width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/flower2.jpg"),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "The best app for your plants",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 70,
                ),
              ),
              SizedBox(
                height: height * 0.2,
              ),
              ReusableButton(
                height: height,
                width: width,
                buttonText: "Sign up",
                textColor: Colors.green,
                backColor: Colors.white,
                onPressed: () {
                  Navigator.pushNamed(context, '/signup');
                },
              ),
              SizedBox(
                height: height * 0.025,
              ),
              ReusableButton(
                height: height,
                width: width,
                buttonText: "Login",
                textColor: Colors.white,
                backColor: Colors.green,
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
