import 'package:flutter/material.dart';

class UploadResepNav extends StatefulWidget {
  @override
  _UploadResepNavState createState() => _UploadResepNavState();
}

class _UploadResepNavState extends State<UploadResepNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Upload Resep"),
      ),
    );
  }
}
