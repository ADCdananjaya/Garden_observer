import 'package:flutter/material.dart';

class Moisture extends StatelessWidget {
  const Moisture({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Moisture levels'),
      ),
      body: Container(
        child: Column(
          children: [
            Center(
              child: Text('Moisture levels'),
            ),
          ],
        ),
      ),
    );
  }
}
