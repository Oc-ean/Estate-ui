import 'package:estate_ui/screen/view_screen.dart';
import 'package:estate_ui/utils/resuable_column.dart';
import 'package:estate_ui/utils/reusable_rooms.dart';
import 'package:estate_ui/utils/reusable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  static const String id = 'input_page';
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  bool isTap = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
          size: 25,
        ),
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'My Properties',
              style:
                  TextStyle(color: Colors.black, fontFamily: 'SignikaNegative'),
            ),
            IconButton(
              onPressed: () {
                isTap = !isTap;
                setState(() {});
              },
              icon: Icon(
                isTap ? CupertinoIcons.bell_fill : CupertinoIcons.bell,
                color: isTap ? Colors.black : Colors.grey,
                size: 27,
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 40,
              width: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 0, left: 30, right: 30),
                  padding: const EdgeInsets.only(
                    top: 20,
                    left: 20,
                  ),
                  height: 60,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey.shade100,
                  ),
                  child: Text(
                    'Search',
                    style: TextStyle(fontSize: 18, color: Colors.grey.shade500),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 15),
                  padding: EdgeInsets.only(right: 0),
                  height: 65,
                  width: 65,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.grey.shade100,
                  ),
                  child: const Icon(
                    CupertinoIcons.slider_horizontal_3,
                    size: 28,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: Text(
                        'Categories',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'SignikaNegative',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 180, top: 7),
                      child: Text(
                        'See All',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontFamily: 'SignikaNegative'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const ReusableRooms(
                              conColor: Colors.black,
                              text: 'Single',
                              textColor: Colors.white,
                              padding: EdgeInsets.only(top: 15, left: 40),
                              width: 125,
                              height: 50),
                          ReusableRooms(
                              conColor: Colors.grey.shade300,
                              text: '3 Bed',
                              textColor: Colors.grey,
                              padding: const EdgeInsets.only(top: 15, left: 40),
                              width: 125,
                              height: 50),
                          ReusableRooms(
                              conColor: Colors.grey.shade300,
                              text: 'Full Apartment',
                              textColor: Colors.grey,
                              padding: const EdgeInsets.only(top: 15, left: 29),
                              width: 155,
                              height: 50),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Row(
                          children: const [
                            ReusableText(
                              text: 'All Results',
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            ReusableText(text: 'Best', color: Colors.black54),
                            SizedBox(
                              width: 30,
                            ),
                            ReusableText(
                                text: 'Popular', color: Colors.black54),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const ReusableColumn(
                  text: 'Rangpur, Bangladesh',
                  image: AssetImage('images/modern.png'),
                ),
                const SizedBox(
                  height: 20,
                ),
                const ReusableColumn(
                  text: 'Thankurgoan, Bangladesh',
                  image: AssetImage('images/glorro.png'),
                ),
                const SizedBox(
                  height: 20,
                ),
                const ReusableColumn(
                  text: 'Dinajpur, Bangladesh',
                  image: AssetImage('images/building.png'),
                ),
                const SizedBox(
                  height: 20,
                ),
                const ReusableColumn(
                  text: 'Rangpur, Bangladesh',
                  image: AssetImage('images/thome.png'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
