import 'package:flutter/material.dart';
import 'package:foodie/pages/bottom.dart';
import 'package:foodie/pages/home.dart';
import 'package:foodie/pages/login.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: login(),
    );
  }
}
