import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShortSize extends StatelessWidget {
  const ShortSize({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.03,
    );
  }
}
