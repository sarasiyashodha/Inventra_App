import 'package:flutter/material.dart';
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
      appBar: AppBar(
        title: Text('Select Route'),
      ),
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
