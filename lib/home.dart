import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:helloworld/moistureLevels.dart';
import 'package:helloworld/npkLevels.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  static const cardImage1 = NetworkImage('https://cdn.pixabay.com/photo/2014/05/07/21/41/drip-339940_960_720.jpg');
  static const supportingText1 = 'Moisture levels';
  static const cardImage2 = NetworkImage('https://cdn.pixabay.com/photo/2016/09/01/19/34/grown-up-1637302_960_720.jpg');
  static const supportingText2 = 'NPK levels';

  GestureDetector buildCard1(var cardImage, var supportingText, var context) {
    return GestureDetector(
      onTap: () => {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Moisture())),
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Card(
            elevation: 4.0,
            child: Column(
              children: [
                Container(
                  height: 150.0,
                  child: Ink.image(
                    image: cardImage,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(16.0),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    supportingText,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }

  GestureDetector buildCard2(var cardImage, var supportingText, var context) {
    return GestureDetector(
      onTap: () => {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => NPK())),
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Card(
            elevation: 4.0,
            child: Column(
              children: [
                Container(
                  height: 150.0,
                  child: Ink.image(
                    image: cardImage,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(16.0),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    supportingText,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffF9F9F9),
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildCard1(cardImage1, supportingText1, context),
          Divider(),
          buildCard2(cardImage2, supportingText2, context),
        ],
      ),
    );
  }
}
