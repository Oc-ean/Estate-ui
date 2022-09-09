import 'package:flutter/material.dart';

class ReusableRow extends StatelessWidget {
  const ReusableRow(
      {Key? key,
      required this.firstText,
      required this.secondText,
      required this.thirdText,
      required this.image})
      : super(key: key);
  final String firstText;
  final String secondText;
  final String thirdText;
  final dynamic image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 340,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.grey.shade200,
      ),
      child: Row(
        children: [
          Column(
            children: [
              Container(
                height: 110,
                width: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey,
                  image: DecorationImage(image: image, fit: BoxFit.cover),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  firstText,
                  style: const TextStyle(fontSize: 15, color: Colors.black54),
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      secondText,
                      style:
                          const TextStyle(fontSize: 15, color: Colors.black54),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
              const SizedBox(
                height: 7,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 99),
                child: Text(
                  thirdText,
                  style: const TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
