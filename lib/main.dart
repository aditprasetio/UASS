import 'package:flutter/material.dart';
import 'package:tubes/navbar/navbar.dart';

import 'package:tubes/navbar/bottom_nav.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomNav(),
    );
  }
}
