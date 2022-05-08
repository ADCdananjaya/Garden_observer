import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Garden Observer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text('nav bar'),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        const BottomNavigationBarItem(icon: Icon(Icons.home), backgroundColor: Colors.blue),
        const BottomNavigationBarItem(icon: Icon(Icons.person), backgroundColor: Colors.red),
        const BottomNavigationBarItem(icon: Icon(Icons.message), backgroundColor: Colors.yellow),
      ]),
    );
  }
}
