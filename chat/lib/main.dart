import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat Flutter',
      theme: ThemeData(
       primarySwatch: Colors.amber,
      ),
      home: Container(),
    );
  }
}
