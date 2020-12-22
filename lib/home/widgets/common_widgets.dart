import 'package:flutter/material.dart';

class RattingBar extends StatelessWidget {
  // final double rating;

  // const RattingBar({Key key, this.rating}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(4, (index) {
        return Icon(
          Icons.star,
          color: Colors.white,
          size: 16,
        );
      }),
    );
  }
}
