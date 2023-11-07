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
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              repeat: ImageRepeat.repeat,
              image: AssetImage(
                'images/background.png',
              ),
            ),
          ),
          child: SafeArea(
            child: Center(
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
            ),
          ),
        ),


    );
  }
}

