import 'package:flutter/material.dart';
import 'screens/home/index.dart';

class BookReaderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(
        data: ThemeData(
          primarySwatch: Colors.blue,
          canvasColor: Colors.indigo[800],
        ),
        child: HomePage(),
      ),
    );
  }
}
