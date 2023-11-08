import 'package:flutter/material.dart';
import 'package:inventra_app/components/bottom_line.dart';
import 'package:inventra_app/constants.dart';
import 'package:inventra_app/screens/route_page.dart';
import '../components/my_text_field.dart';
import '../models/user_model.dart';
import '../services/api_service.dart';

class SignInPage extends StatefulWidget {
  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final String apiKey = 'jffWqnjWtdqRZzvpcNaUvvpHjFgYXnkLeBQNZzUJJBRWrmKkebDJqHGPDRHwajqxjNUvwhLQfYEFRjYCJBjfjWDWzjGdNrSWtMPyjjyUhZfpQjeevMUqgTEUWYDytAcumfQFPCFamwVXDfbVjkTXuUnLfQcAgyTyvRQPhZSQvGLxVpetPAeWriHEWtyvDKeZKJQDvfzx';
  final _formKey = GlobalKey<FormState>();
  String username = "";
  String password = "";
  String error = "";

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void _login(BuildContext context) async {
    String username = usernameController.text;
    String password = passwordController.text;

    if (username == 'sarasi' && password == '123') {
      try {
        UserModel user = await ApiService.loginUser(username, password, apiKey);
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RoutePage(user: user),
          ),
        );
      } catch (e) {
        setState(() {
          error = "Failed to log in. Please try again."; // Update error message
        });
      }
    } else {
      setState(() {
        error = "Invalid username or password"; // Update error message
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
          Positioned(
            top: 450,
            left: 0,
            right: -90,
            child: Transform.rotate(
              angle: 3.14,
              child: Image.asset(
                'images/background.png',
                width: 377.0,
                height: 378.0,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(22.0),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 47.0,
                  ),
                  Image(image: AssetImage('images/name.png'), width: 205.0, height: 52.0, alignment: Alignment.topLeft),
                  Text('Sign in to your account',
                    style: ksubTitleTextStyle,
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        MyTextField(
                          validator: (val) =>
                            val?.isEmpty == true ? "Enter a valid Email" : null,
                          controller: usernameController,
                          hintText: 'Username',
                          obscureText: false,
                          icon: Icons.person,
                          onChanged: (val) {
                            setState(() {
                              username = val;
                            });

                          },
                        ),
                        const SizedBox(height: 44.0),
                        MyTextField(
                          validator: (val) =>
                          val?.isEmpty == true ? "Enter a valid password" : null,
                          controller: passwordController,
                          hintText: 'Password',
                          obscureText: true,
                          icon: Icons.lock,
                          onChanged: (val) {
                            setState(() {
                              password = val;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  Text(
                    error,
                    style: TextStyle(color: Colors.red),
                  ),
                  SizedBox(height: 22.0,),
                  Text('Forgot password?',
                    style: TextStyle(fontFamily: 'Lato', fontWeight: FontWeight.w700, color: Color(0XFF1AC9CD), fontSize: 16.0),),
                  SizedBox(height: 30.0,),
                  GestureDetector(
                    onTap: () => _login(context),

                    child: Container(
                      padding: const EdgeInsets.all(25.0),
                      decoration: BoxDecoration(
                        color: Color(0xff18C9CD),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),


                ],
              ),

            ),
          ),
          Positioned(
            top: 765,
              left: 112,
              child: BottomLine()),
        ],
      ),
    );
  }
}
