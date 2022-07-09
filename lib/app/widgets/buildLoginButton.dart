import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos_platform/app/components/borderRadius.dart';
import 'package:pos_platform/app/widgets/buildText.dart';

class BuildLoginButton extends StatelessWidget {
  final String text;
  final Color color;
  final void Function() onTap;
  final double height;
  final double width;
  final double fontsize;
  const BuildLoginButton({
    Key? key,
    required this.text,
    required this.color,
    required this.onTap, required this.height, required this.width, required this.fontsize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadiusum.buildContainerDecoration(23.0),
          ),
          child: Center(
              child: Padding(
                  padding: EdgeInsets.all(10),
                  child: BuildText(
                    text: text,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontsize: fontsize,
                  ))),
        ),
      ),
    );
  }
}
