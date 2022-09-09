import 'package:estate_ui/screen/view_screen.dart';
import 'package:flutter/material.dart';

class ReusableColumn extends StatelessWidget {
  const ReusableColumn({Key? key, required this.text, required this.image})
      : super(key: key);
  final dynamic image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, ViewScreen.id);
          },
          child: Container(
            margin: const EdgeInsets.only(left: 1),
            height: 110,
            width: 340,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.grey.shade200,
            ),
            child: Row(
              children: [
                Container(
                  height: 120,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(image: image, fit: BoxFit.cover),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 15),
                      child: Text(
                        text,
                        style: const TextStyle(
                            fontSize: 15, color: Colors.black54),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: const [
                        Text(
                          '🛏️O2',
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                        SizedBox(
                          width: 11,
                        ),
                        Text(
                          '🛁O2',
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                        SizedBox(
                          width: 11,
                        ),
                        Text('🛋️O6')
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 40),
                      child: Text(
                        '\$87.00 Month',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
