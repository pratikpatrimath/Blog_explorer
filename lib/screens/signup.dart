import 'package:blog_explorer/widgets/emailtextfield.dart';
import 'package:blog_explorer/widgets/passwordtext.dart';
import 'package:flutter/material.dart';

import '../widgets/emailtext.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.white, const Color.fromRGBO(165, 214, 167, 1)],
              begin: const FractionalOffset(0.0, 1.0),
              end: const FractionalOffset(0.0, 1.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.repeated)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Signup',
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, letterSpacing: 2),
          ),
          SizedBox(
            height: 30,
          ),
          usernameTextField(),
          emailTextField(),
          passwordTextField(),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 50,
            width: 320,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(primary: Colors.white),
                child: Text(
                  'Signup',
                  style: TextStyle(color: Colors.black),
                )),
          ),
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Already have an account? Login',
                style: TextStyle(color: Colors.black),
              ))
        ],
      ),
    ));
  }
}
