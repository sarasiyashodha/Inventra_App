import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  final String routeName;

  MainPage({required this.routeName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selected Route'),
      ),
      body: Center(
        child: Text(
          'Selected Route: $routeName',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
