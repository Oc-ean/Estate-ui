import 'package:estate_ui/screen/input_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class StartScreen extends StatefulWidget {
  static const String id = 'start_screen';
  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Container(
              margin: const EdgeInsets.only(left: 35),
              child: Column(
                children: [
                  const Text(
                    'Start Investing In Realestate 🏠',
                    style: TextStyle(
                        fontSize: 40,
                        fontFamily: 'SignikaNegative',
                        color: Colors.black),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: const [
                      Expanded(
                        child: Text(
                          'Lorem ipsum is simply dummy text of the printing and typesetting',
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 10),
                    child: Image.asset(
                      'images/agent.png',
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 30),
                    padding: const EdgeInsets.only(top: 5, left: 25, right: 15),
                    height: 80,
                    width: 320,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.blueGrey.shade50,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Get Started',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey,
                              fontFamily: 'SignikaNegative'),
                        ),
                        FloatingActionButton(
                          backgroundColor: Colors.black,
                          onPressed: () {
                            Navigator.pushNamed(context, InputPage.id);
                          },
                          child: const Icon(
                            CupertinoIcons.forward,
                            size: 35,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // Row(
            //   children: [
            //     Expanded(
            //       child: Padding(
            //         padding: const EdgeInsets.only(left: 35),
            //         child: Column(
            //           children: [
            //             Text(
            //               'Lorem ipsum is simply dummy text of the printing and typesetting',
            //               style: TextStyle(fontSize: 15, color: Colors.grey),
            //             ),
            //             SizedBox(
            //               height: 15,
            //             ),
            //             Image(
            //               image: AssetImage('images/agent.png'),
            //             ),
            //             SizedBox(
            //               height: 10,
            //             ),
            //             // Row(
            //             //   children: [
            //             //     Container(
            //             //       height: 80,
            //             //       width: 320,
            //             //       decoration: BoxDecoration(
            //             //         borderRadius: BorderRadius.circular(50),
            //             //         color: Colors.blueGrey.shade50,
            //             //       ),
            //             //       child: Padding(
            //             //         padding:
            //             //             const EdgeInsets.only(top: 5, left: 27),
            //             //         child: Row(
            //             //           mainAxisAlignment:
            //             //               MainAxisAlignment.spaceBetween,
            //             //           children: [
            //             //             Text(
            //             //               'Get Started',
            //             //               style: TextStyle(
            //             //                   fontSize: 20,
            //             //                   color: Colors.grey,
            //             //                   fontFamily: 'SignikaNegative'),
            //             //             ),
            //             //             Padding(
            //             //               padding: const EdgeInsets.only(right: 20),
            //             //               child: FloatingActionButton(
            //             //                 backgroundColor: Colors.black,
            //             //                 onPressed: () {
            //             //                   Navigator.pushNamed(
            //             //                       context, InputPage.id);
            //             //                 },
            //             //                 child: Icon(
            //             //                   CupertinoIcons.forward,
            //             //                   size: 35,
            //             //                 ),
            //             //               ),
            //             //             )
            //             //           ],
            //             //         ),
            //             //       ),
            //             //     ),
            //             //   ],
            //             // ),
            //           ],
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
