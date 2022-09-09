import 'package:flutter/material.dart';

class ViewMore extends StatelessWidget {
  const ViewMore({Key? key, required this.image}) : super(key: key);
  final dynamic image;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: const EdgeInsets.only(left: 25, right: 25),
        height: 210,
        width: 340,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          image: DecorationImage(
            image: image,
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 180,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white.withOpacity(0.5),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white.withOpacity(0.5),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 12, left: 32),
                            child: Text(
                              'View more',
                              style: TextStyle(
                                color: Colors.grey.shade500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
