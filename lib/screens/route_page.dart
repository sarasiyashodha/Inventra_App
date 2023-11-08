import 'package:flutter/material.dart';
import 'package:inventra_app/constants.dart';
import '../components/bottom_line.dart';
import '../models/user_model.dart';

class RoutePage extends StatelessWidget {
  final UserModel user;

  RoutePage({required this.user});

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
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(22.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 47.0,
                    ),
                    Row(
                      children: [
                        Text(
                          'ROUTE ',
                          style: ktitleTextStyle,
                        ),
                        Text('SELECTION',
                            style: TextStyle(
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w400,
                                color: Color(0XFF212121),
                                fontSize: 25.0)),
                      ],
                    ),
                    Text(
                      'Select the following company, you need to process',
                      style: ksubTitleTextStyle,
                    ),
                    SizedBox(
                      height: 65.0,
                    ),
                    Container(
                      height: 510.0,
                      width: double.maxFinite,
                      child: ListView.builder(
                        itemCount: user.routes.length,
                        itemBuilder: (context, index) {
                          String routeName = user.routes[index]['route'];
                          return Container(
                            height: 56.0,
                            width: 327,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            margin: EdgeInsets.only(
                                left: 0.0, right: 0.0, top: 0.0, bottom: 12.0),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 15.0,
                                  right: 15.0,
                                  top: 0.0,
                                  bottom: 0.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 40.0,
                                    height: 40.0,
                                    decoration: BoxDecoration(
                                      color: Color(0XFFF1F6FF),
                                    ),
                                    child: Icon(
                                      Icons.near_me,
                                      color: Color(0XFF18C9CD),
                                      size: 20.0,
                                    ),
                                  ),
                                  Text(
                                    routeName,
                                    style: krouteTextStyle,
                                  ),
                                  SizedBox(
                                    width: 50.0,
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Color(0XFF979797),
                                    size: 15.0,
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(top: 765, left: 112, child: BottomLine()),
        ],
      ),
    );
  }
}
