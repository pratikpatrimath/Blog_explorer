import 'package:blog_explorer/screens/signup.dart';
import 'package:blog_explorer/widgets/container.dart';
import 'package:flutter/material.dart';

import 'home_Screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with TickerProviderStateMixin {
  AnimationController? _controller1;
  Animation<Offset>? animation1;
  AnimationController? _controller2;
  Animation<Offset>? animation2;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //animation 1
    _controller1 = AnimationController(
      duration: Duration(milliseconds: 1500),
      vsync: this,
    );
    animation1 = Tween<Offset>(
      begin: Offset(0.0, 8.0),
      end: Offset(0.0, 0.0),
    ).animate(
      CurvedAnimation(parent: _controller1!, curve: Curves.bounceOut),
    );
    //animation 2
    _controller2 = AnimationController(
      duration: Duration(milliseconds: 3000),
      vsync: this,
    );
    animation2 = Tween<Offset>(
      begin: Offset(0.0, 8.0),
      end: Offset(0.0, 0.0),
    ).animate(
      CurvedAnimation(parent: _controller2!, curve: Curves.bounceOut),
    );
    _controller1!.forward();
    _controller2!.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller1!.dispose();
    _controller2!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Colors.white,
                    const Color.fromRGBO(165, 214, 167, 1)
                  ],
                  begin: const FractionalOffset(0.0, 1.0),
                  end: const FractionalOffset(0.0, 1.0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.repeated)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SlideTransition(
                  position: animation1!,
                  child: Text(
                    'Blog Explorer',
                    style: TextStyle(
                        fontSize: 38,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 2),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 6),
                SlideTransition(
                  position: animation1!,
                  child: Text('Great stories for great people',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 38,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 2)),
                ),
                SizedBox(
                  height: 20,
                ),
                SlideTransition(
                    position: animation2!,
                    child: boxContainer(
                        'assets/google.png', 'Sign up with Google', null)),
                SizedBox(
                  height: 20,
                ),
                SlideTransition(
                    position: animation2!,
                    child: boxContainer(
                        'assets/facebook1.png', 'Sign up with Facebook', null)),
                SizedBox(
                  height: 20,
                ),
                SlideTransition(
                    position: animation2!,
                    child: boxContainer('assets/email2.png',
                        'Sign up with Email', onemailClick)),
                SizedBox(height: 10),
                SlideTransition(
                  position: animation2!,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: TextStyle(color: Colors.black, fontSize: 17),
                      ),
                      Text('Sign in',
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 17,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SlideTransition(
                  position: animation2!,
                  child: SizedBox(
                    height: 50,
                    width: 320,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()));
                        },
                        style: ElevatedButton.styleFrom(primary: Colors.white),
                        child: Text(
                          'Get Started',
                          style: TextStyle(color: Colors.black),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  onemailClick() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SignupScreen()));
  }
}
