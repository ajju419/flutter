import 'package:flutter/material.dart';
import 'package:firstapp/gradientContainer.dart';

void main() {
  String url =
      "https://cdn.pixabay.com/photo/2014/02/27/16/10/flowers-276014_1280.jpg";
  GradientContainer x;
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 231, 115, 117),
        body: GradientContainer(),
      ),
    ),
  );
}
