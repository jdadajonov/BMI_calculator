import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

class CardChild extends StatelessWidget {
  CardChild({this.iconPicture, this.iconText});

  final IconData iconPicture;
  final String iconText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconPicture, size: 80.0),
        SizedBox(height: 30.0),
        Text(iconText, style: labelTextStyle)
      ],
    );
  }
}
