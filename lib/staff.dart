import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffF9F9F9),
      /*
      child: Center(
        child: Text(
          "Staff Page",
          style: TextStyle(
            color: Colors.greenAccent[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      */
      child: Column(
        children: [
          Container(
            height: 230,
            child: Stack(
              children: [
                Positioned(
                  child: Material(
                    child: Container(
                      height: 180.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: [
                          new BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            offset: new Offset(-10.0, 10.0),
                            blurRadius: 20.0,
                            spreadRadius: 4.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
