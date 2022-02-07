// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:techassignment3/components/reusable_button.dart';
import 'package:techassignment3/components/reusable_textfield.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/flower2.jpg'),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  "assets/leaflogo.png",
                  width: width * 0.2,
                ),
                SizedBox(
                  height: height * 0.1,
                ),
                Container(
                  height: height * 0.7,
                  width: width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: height * 0.05,
                        ),
                        Text(
                          "Welcome Back",
                          style: TextStyle(
                              color: Colors.green[700],
                              fontSize: 35,
                              letterSpacing: 5),
                        ),
                        Text(
                          'Log into your Account',
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        ),
                        SizedBox(
                          height: height * 0.05,
                        ),
                        ReusableTextField(
                          height: height,
                          width: width,
                          hintText: "Email/Username",
                        ),
                        SizedBox(
                          height: height * 0.025,
                        ),
                        ReusableTextField(
                          height: height,
                          width: width,
                          hintText: "Password",
                          dicon: Icon(Icons.remove_red_eye),
                        ),
                        SizedBox(
                          height: height * 0.25,
                        ),
                        ReusableButton(
                          height: height,
                          width: width,
                          buttonText: "Log In",
                          backColor: Colors.green.shade900,
                          textColor: Colors.white,
                          // onPresse: () {
                          //   print("object");
                          // },
                        ),
                        SizedBox(
                          height: height * 0.0125,
                        ),
                        RichText(
                            text: TextSpan(
                                text: "Don't have an account? ",
                                style: TextStyle(color: Colors.grey),
                                children: <TextSpan>[
                              TextSpan(
                                  text: "Sign Up",
                                  style:
                                      TextStyle(color: Colors.green.shade900))
                            ]))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
