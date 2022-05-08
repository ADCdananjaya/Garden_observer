import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('FlutLab User'),
            accountEmail: Text('flutlab.ide@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text(
                "F",
                style: TextStyle(fontSize: 40.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}
