import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final IconData icon;
  final void Function(String)? onChanged;


  const MyTextField({
    required this.controller,
    required this.hintText,
    required this.obscureText,
    required this.icon,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        fillColor: Color(0XFFF6F8FB),
        filled: true,
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey[500], fontFamily: 'Lato', fontWeight: FontWeight.w400, fontSize: 14.0),
        prefixIcon: Icon(icon, color: Color(0XFFD7D7D7), size: 24.0),
        // suffixIcon: IconButton(
        //   icon: Icon(passwordVisible
        //       ? Icons.visibility
        //       : Icons.visibility_off),
        //   onPressed: () {
        //     setState(
        //           () {
        //         passwordVisible = !passwordVisible;
        //       },
        //     );
        //   },
        // ),
      ),
      onChanged: onChanged,
    );
  }
}
