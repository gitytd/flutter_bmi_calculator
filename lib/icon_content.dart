import 'package:flutter/material.dart';
import 'constants.dart';


class cardChildColumn extends StatelessWidget {
  cardChildColumn(this.icon, this.text);

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 80.0,
        ),
        SizedBox.fromSize(
          size: Size.fromHeight(15.0),
        ),
        Text(
          text,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}