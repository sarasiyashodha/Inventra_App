import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final IconData icon;
  final Widget? suffixIcon;
  final FormFieldValidator<String>? validator;
  final void Function(String)? onChanged;


  const MyTextField({
    required this.controller,
    required this.hintText,
    required this.obscureText,
    required this.icon,
    this.suffixIcon,
    required this.validator,
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
        suffixIcon: suffixIcon != null
            ? InkWell(
          onTap: () {
            if (onChanged != null) {
              onChanged!(controller.text); // Pass the current text to onChanged callback
            }
          },
          child: suffixIcon,
        )
            : null, // Conditionally add suffix icon

      ),
      validator: validator,
      onChanged: onChanged,
    );
  }
}
