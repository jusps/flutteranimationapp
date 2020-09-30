import 'package:flutter/material.dart';
import 'package:myanimationapp/animation.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('~Welcome~ '),
          backgroundColor: Colors.black,
        ),
        body: MyAnimation(),
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}
