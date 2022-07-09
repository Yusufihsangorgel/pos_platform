import 'package:flutter/material.dart';


class BuildText extends StatelessWidget {
  final String text;
  final Color color;
  final FontWeight? fontWeight;
  final double? fontsize;

  const BuildText(
      {Key? key,
      required this.text,
      required this.color,
      this.fontWeight,
      this.fontsize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
          fontSize: fontsize,
          color: color,
          fontWeight: fontWeight,
        ));
  }
}
