import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      body: Row(
        children: [
          Text("This is a about us page!"),
          Text("this is a new text!"),
        ],
      ),
    );
  }
}
