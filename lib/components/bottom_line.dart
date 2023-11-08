import 'package:flutter/material.dart';

class BottomLine extends StatelessWidget {
  const BottomLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Powered by ',
            style: TextStyle(
                fontFamily: 'Lato',
                fontWeight: FontWeight.w400,
                color: Color(0XFF6B7280),
                fontSize: 16.0),
          ),
          Text(
            'APP',
            style: TextStyle(
                fontFamily: 'Lato',
                fontWeight: FontWeight.w700,
                color: Color(0XFF1D3A70),
                fontSize: 16.0),
          ),
          Text(
            '360',
            style: TextStyle(
                fontFamily: 'Lato',
                fontWeight: FontWeight.w700,
                color: Color(0XFFF56C2A),
                fontSize: 16.0),
          )
        ],
      ),
    );
  }
}
