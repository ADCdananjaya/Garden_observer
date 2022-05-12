import 'package:flutter/cupertino.dart';
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
        child: Column(
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
            Row(
              children: <Widget>[
                Text(
                  'Author',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Project Group 6',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
