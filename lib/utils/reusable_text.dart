import 'package:flutter/material.dart';

class ReusableText extends StatelessWidget {
  const ReusableText({Key? key, required this.text, required this.color})
      : super(key: key);
  final String text;

  final dynamic color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(fontSize: 22, fontFamily: 'SignikaNegative', color: color),
    );
  }
}
