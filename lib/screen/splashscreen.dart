import 'dart:async';

import 'package:assigment/screen/Homescreen.dart';
import 'package:assigment/screen/Register.dart';
import 'package:assigment/screen/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

 void initState() {
    super.initState();
    Timer(const Duration(seconds: 7), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Login()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
               margin: const EdgeInsets.only(top: 100),
               decoration: BoxDecoration(
                image: DecorationImage(image: 
                AssetImage("assets/images/logo.png")
                )
               ),
               child: Container(
                margin: EdgeInsets.only(top: 180),
                child: Text(
                "Let's In You",
                style: TextStyle(
                  wordSpacing: 5,
                   fontSize: 35,
                      color: Colors.black,
                      fontWeight: FontWeight.w800
                ),
                ),
               ),
          ),
    
          SizedBox(
            height: 25,
          ),
    
             OutlinedButton(
                onPressed: () {
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Register()));
                },
                style: OutlinedButton.styleFrom(
                  shape: const StadiumBorder(),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 40, right: 40, top: 6, bottom: 6),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(
                        Icons.facebook,
                        size: 30,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        "Continue with Facebook",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      )
                    ],
                  ),
                )),
            const SizedBox(
              height: 8,
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => Register()));
              },
              style: OutlinedButton.styleFrom(
                shape: const StadiumBorder(),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 45, right: 45, top: 8, bottom: 8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    FaIcon(FontAwesomeIcons.google,
                        size: 28, color: Color.fromARGB(255, 233, 3, 3)),
                    SizedBox(
                      width: 14,
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      "Continue with Google",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            OutlinedButton(
                onPressed: () {
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Register()));
                },
                style: OutlinedButton.styleFrom(
                  shape: const StadiumBorder(),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 44, right: 44, top: 6, bottom: 6),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(
                        Icons.apple,
                        color: Colors.black,
                        size: 33,
                      ),
                      SizedBox(width: 15),
                      Text(
                        textAlign: TextAlign.center,
                        "Continue with Apple",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      )
                    ],
                  ),
                )),
            const SizedBox(
              height: 35,
            ),
            const Center(child: Text("or")),
            const Divider(),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Login()));
                },
                style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 50, right: 50, top: 15, bottom: 15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text(
                        textAlign: TextAlign.center,
                        "Sign in with password",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      )
                    ],
                  ),
                )),
            const SizedBox(
              height: 30,
            ),
            const Text("Don't have an account?"),
            TextButton(onPressed: () {
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => Register()));
            }, child: const Text("Sign up"))
          ]),
    ),
      );
        
      
     
  }
}