import 'package:flutter/material.dart';

import '../components/bottom_line.dart';
import 'signin_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SignInPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: -200,
            child: Transform.rotate(
              angle: 3.14,
              child: Image.asset(
                'images/background.png',
                width: 377.0,
                height: 378.0,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: -100,
            child: Image.asset(
              'images/background.png',
              width: 377.0,
              height: 378.0,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 352.0,),
                Image(image: AssetImage('images/name.png'), width: 242.0, height: 61.0,),
                Text('Welcome back, Sign in to your account',
                  style: TextStyle(fontFamily: 'Roboto', fontWeight: FontWeight.w400, color: Color(0XFFC4C4C4), fontSize: 16.0),
                ),
                SizedBox(height: 300.0),
                BottomLine(),

              ],
            ),
          )
        ],
      ),


    );
  }
}

