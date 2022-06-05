import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

/*
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
*/

class NPK extends StatefulWidget {
  const NPK({Key? key}) : super(key: key);
  _NPKState createState() => _NPKState();
}

class _NPKState extends State<NPK> {
  List<String> years = [];

  Future getYear() async {
    await FirebaseFirestore.instance.collection('sales').get().then(
          (snapshot) => snapshot.docs.forEach((element) {
            print(element.reference);
          }),
        );
  }

  @override
  void initState() {
    getYear();
    super.initState();
  }

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
