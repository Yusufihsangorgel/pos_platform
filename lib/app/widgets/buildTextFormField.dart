import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos_platform/app/components/borderRadius.dart';
import 'package:pos_platform/app/pages/login/controller/loginController.dart';


class BuildTextFormField extends StatelessWidget {
  LoginController loginController = Get.put(LoginController());
  void Function(String) changed;
  final String? error;
  final Icon prefixIcon;
  final IconButton? suffixIcon;
  final bool? obscureBool;
  final String text;
  String? Function(String?)? validator;

  BuildTextFormField({
    Key? key,
    required this.text,
    this.obscureBool,
    required this.changed,
    this.error,
    required this.prefixIcon,
    this.suffixIcon,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: TextFormField(
        validator: validator,
        onChanged: changed,
        keyboardType: TextInputType.text,
        obscureText: obscureBool ?? false,
        style: const TextStyle(color: Colors.black),
        decoration: buildFieldDecoration(),
      ),
    );
  }

  InputDecoration buildFieldDecoration() {
    return InputDecoration(
      enabledBorder: buildOutlineInputBorder(Colors.transparent),
      errorBorder: buildOutlineInputBorder(Colors.red),
      disabledBorder: buildOutlineInputBorder(Colors.transparent),
      fillColor: Colors.blue[50],
      filled: true,
      border: buildOutlineInputBorder(Colors.black),
      focusedBorder: buildOutlineInputBorder(Colors.blue),
      labelText: text,
      errorText: error,
      prefixIcon: prefixIcon,
      
      suffixIcon: suffixIcon,
      labelStyle: const TextStyle(fontWeight: FontWeight.bold),
    );
  }

  OutlineInputBorder buildOutlineInputBorder(Color color) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color, width: 0.0),
      borderRadius:  BorderRadiusum.buildContainerDecoration(23.0),
    );
  }
}