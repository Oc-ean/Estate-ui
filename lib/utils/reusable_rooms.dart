import 'package:flutter/material.dart';

class ReusableRooms extends StatelessWidget {
  const ReusableRooms(
      {Key? key,
      required this.conColor,
      required this.text,
      required this.textColor,
      required this.padding,
      required this.width,
      required this.height})
      : super(key: key);
  final dynamic conColor;
  final dynamic textColor;
  final String text;
  final dynamic padding;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: padding,
          margin: const EdgeInsets.only(left: 20),
          height: height,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: conColor,
          ),
          child: Text(
            text,
            style: TextStyle(color: textColor, fontSize: 18),
          ),
        ),

        // Container(
        //   height: 50,
        //   width: 125,
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(25),
        //     color: conColor,
        //   ),
        //   child: Padding(
        //     padding: const EdgeInsets.only(top: 15, left: 40),
        //     child: Text(
        //       text,
        //       style: TextStyle(fontSize: 18, color: textColor),
        //     ),
        //   ),
        // ),
        // const SizedBox(
        //   width: 15,
        // ),
        // Container(
        //   height: 50,
        //   width: 155,
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(25),
        //     color: conColor,
        //   ),
        //   child:  Padding(
        //     padding: const EdgeInsets.only(top: 15, left: 29),
        //     child: Text(
        //       text,
        //       style: TextStyle(fontSize: 17, color: textColor),
        //     ),
        //   ),
        // ),
        // const SizedBox(
        //   width: 20,
        // ),
      ],
    );
  }
}
