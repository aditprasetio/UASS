import 'package:flutter/material.dart';

class ResepNav extends StatefulWidget {
  @override
  _ResepNavState createState() => _ResepNavState();
}

class _ResepNavState extends State<ResepNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resep"),
      ),
    );
  }
}
