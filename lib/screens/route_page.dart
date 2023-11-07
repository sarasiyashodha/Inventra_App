import 'package:flutter/material.dart';
import 'package:inventra_app/constants.dart';
import '../models/user_model.dart';
import 'main_page.dart';

class RoutePage extends StatelessWidget {
  final UserModel user;

  RoutePage({required this.user});

  void _selectRoute(BuildContext context, String routeName) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MainPage(routeName: routeName),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Container(
      //   decoration: BoxDecoration(
      //     image: DecorationImage(
      //       repeat: ImageRepeat.repeat,
      //       image: AssetImage(
      //         'images/background.png',
      //       ),
      //     ),
      //   ),
      //   child: Padding(
      //     padding: const EdgeInsets.all(22.0),
      //     child: Column(
      //       children: [
      //         SizedBox(
      //           height: 47.0,
      //         ),
      //         Row(
      //           children: [
      //             Text('ROUTE ', style: ktitleTextStyle,),
      //             Text('SELECTION', style: TextStyle(fontFamily: 'Lato', fontWeight: FontWeight.w400, color: Color(0XFF212121), fontSize: 25.0)),
      //           ],
      //         ),
      //         Text('Select the following company, you need to process', style: ksubTitleTextStyle,),
      //         SizedBox(
      //           height: 73.0,
      //         ),
      //         Container(height: 56.0, width: 327,
      //           decoration: BoxDecoration(
      //             color: Colors.red,
      //           ),
      //           child: Padding(
      //             padding: const EdgeInsets.only(left: 15.0,right: 15.0, top: 0.0, bottom: 0.0),
      //             child: Row(
      //               children: [
      //                 Container(
      //                   width: 40.0,
      //                   height: 40.0,
      //                   decoration: BoxDecoration(
      //                     color: Color(0XFFF1F6FF),
      //                   ),
      //                   child: Icon(Icons.near_me, color: Color(0XFF18C9CD), size: 20.0,),
      //                 ),
      //                 SizedBox(width: 10.0,),
      //                 Text('Gampaha', style: krouteTextStyle,),
      //                 SizedBox(width: 50.0,),
      //                 Icon(Icons.arrow_forward_ios, color: Color(0XFF979797), size: 20.0,),
      //               ],
      //             ),
      //           ),
      //         )
      //       ],
      //     ),
      //   ),
      // ),
      body: ListView.builder(
        itemCount: user.routes.length,
        itemBuilder: (context, index) {
          String routeName = user.routes[index]['route'];
          return ListTile(
            title: Text(routeName),
            onTap: () => _selectRoute(context, routeName),
          );
        },
      ),
    );
  }
}
