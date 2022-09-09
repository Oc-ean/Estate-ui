import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({Key? key, required this.text, required this.image})
      : super(key: key);
  final String text;
  final dynamic image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 30),
          height: 250,
          width: 210,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(34),
            color: Colors.grey.shade200,
          ),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 16),
                child: Container(
                  height: 160,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 89),
                child: Text(
                  text,
                  style: const TextStyle(fontSize: 17, color: Colors.black54),
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      '🛏️O2',
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
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
                  Text('🛋️O6'),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
