import 'package:flutter/material.dart';

class BorderRadiusum {
  static BorderRadius buildContainerDecoration(double corner) {
    return BorderRadius.only(
      topLeft: Radius.circular(corner),
      topRight: Radius.circular(corner),
      bottomLeft: Radius.circular(corner),
      bottomRight: Radius.circular(corner),
    );
  }
}
