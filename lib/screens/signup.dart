// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:techassignment3/components/reusable_button.dart';
import 'package:techassignment3/components/reusable_textfield.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: GestureDetector(
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 20,
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.green.shade900,
                size: 20,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          elevation: 0, // 1
        ),
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
                Text(
                  "Register",
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
                Text(
                  "Create your new account",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Container(
                  height: height * 0.8,
                  width: width,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                    ),
                  ),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: height * 0.05,
                      ),
                      ReusableTextField(
                        height: height,
                        width: width,
                        hintText: "First Name",
                      ),
                      SizedBox(
                        height: height * 0.025,
                      ),
                      ReusableTextField(
                        height: height,
                        width: width,
                        hintText: "Last Name",
                      ),
                      SizedBox(
                        height: height * 0.025,
                      ),
                      ReusableTextField(
                        height: height,
                        width: width,
                        hintText: "Email",
                      ),
                      SizedBox(
                        height: height * 0.025,
                      ),
                      ReusableTextField(
                        height: height,
                        width: width,
                        hintText: "Password",
                      ),
                      SizedBox(
                        height: height * 0.025,
                      ),
                      ReusableTextField(
                        height: height,
                        width: width,
                        hintText: "Confirm password",
                      ),
                      SizedBox(
                        height: height * 0.0125,
                      ),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                            text: "By signing up you agree to our ",
                            style: TextStyle(color: Colors.green.shade900),
                            children: const <TextSpan>[
                              TextSpan(
                                text: "terms of use ",
                                style: TextStyle(color: Colors.grey),
                              ),
                              TextSpan(
                                text: "and ",
                              ),
                              TextSpan(
                                text: "privacy policy ",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ]),
                      ),
                      SizedBox(
                        height: height * 0.1,
                      ),
                      ReusableButton(
                        height: height,
                        width: width,
                        buttonText: "Sign up",
                        backColor: Colors.green.shade900,
                        textColor: Colors.white,
                        //   onPresse: () {
                        //   print("Signed up!");
                        // },
                      ),
                      SizedBox(
                        height: height * 0.0125,
                      ),
                      RichText(
                          text: TextSpan(
                              text: "Already have an account? ",
                              style: TextStyle(color: Colors.grey),
                              children: <TextSpan>[
                            TextSpan(
                                text: "Log in",
                                style: TextStyle(color: Colors.green.shade900))
                          ]))
                    ],
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
