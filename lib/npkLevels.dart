import 'package:flutter/material.dart';

class NPK extends StatelessWidget {
  const NPK({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NPK levels'),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text('NPK levels'),
            ),
          ],
        ),
      ),
    );
  }
}