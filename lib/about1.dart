import 'package:flutter/material.dart';

class AboutUs1 extends StatelessWidget {
  const AboutUs1({Key? key}) : super(key: key);

  Widget buidImage() => Image.network(
        'https://cdn3.iconfinder.com/data/icons/agriculture-farming-and-gardening-vol-6/90/Save_Plantsc7-1024.png',
        fit: BoxFit.cover,
        width: 130,
        height: 130,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          buidImage(),
        ],
      ),
    );
  }
}
