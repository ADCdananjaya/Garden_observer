import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

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
      body: Container(
        width: double.infinity,
        //padding: EdgeInsets.all(12),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buidImage(),
            Text(
              'Garden Observer',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              'Group Members',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
