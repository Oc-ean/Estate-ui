import 'package:estate_ui/utils/reusable_card.dart';
import 'package:estate_ui/utils/reusable_row.dart';
import 'package:estate_ui/utils/view_more.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ViewScreen extends StatefulWidget {
  static const String id = 'view_screen';
  const ViewScreen({Key? key}) : super(key: key);

  @override
  State<ViewScreen> createState() => _ViewScreenState();
}

class _ViewScreenState extends State<ViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ViewMore(
              image: AssetImage('images/modern.png'),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 27),
                  child: Text(
                    'My Properties',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 28),
                  child: Text(
                    'See All',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        fontFamily: 'SignikaNegative'),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  ReusableCard(
                    text: 'Inami Park',
                    image: AssetImage('images/Andres.png'),
                  ),
                  ReusableCard(
                    text: 'Kasa Walle',
                    image: AssetImage('images/pinoy.png'),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 35),
                  child: Text(
                    'Latest Properties',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 35),
                  child: Text(
                    'See All',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const ReusableRow(
              firstText: 'Lorem Ipsum is simply',
              secondText: ' dummy text of the printing',
              thirdText: '14h Ago',
              image: AssetImage('images/skoto.png'),
            ),
            const SizedBox(
              height: 20,
            ),
            const ReusableRow(
              firstText: 'Lorem Ipsum is simply',
              secondText: ' dummy text of the printing',
              thirdText: '14h Ago',
              image: AssetImage('images/sucasa.png'),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
