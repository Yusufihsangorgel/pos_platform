import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BuildImage extends StatelessWidget {
  final String image;
  const BuildImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      height: Get.height * 0.2,
      fit: BoxFit.cover,
    );
  }
}