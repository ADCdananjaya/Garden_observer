import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffF9F9F9),
      child: Center(
        /*
        child: Text(
          "Chat Page",
          style: TextStyle(
            color: Colors.greenAccent[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
        */
        child: Column(
          children: [
            Text(
              "Chat Page",
              style: TextStyle(
                color: Colors.greenAccent[900],
                fontSize: 45,
                fontWeight: FontWeight.w500,
              ),
            ),
            Image.network('https://cdn.pixabay.com/photo/2017/06/16/07/26/under-construction-2408060_960_720.png'),
          ],
        ),
      ),
    );
  }
}
