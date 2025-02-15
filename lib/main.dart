import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer([
          Color.fromARGB(255, 9, 30, 58),
          Color.fromARGB(255, 47, 128, 237),
          Color.fromARGB(255, 45, 158, 224)
        ]),
      ),
    ),
  );
}
