import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos_platform/app/routes/appPages.dart';

class LoginController extends GetxController {
  var eMail = "blabla@gmail.com".obs;
  var nameSurname = "nameSurname".obs;
  var phoneNumber = "432432".obs;
  var password = "1".obs;
  var showPassword = true.obs;
  var emailError = RxnString(null);
  var passwordError = RxnString(null);
  var getRegister = false.obs;
  var isLogin = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  void showPasswordFunc() {
    if (showPassword.isTrue) {
      showPassword.value = false;
    } else {
      showPassword.value = true;
    }
  }

  void registerWidget() {
    if (getRegister.isFalse) {
      getRegister.value = true;
    } else {
      getRegister.value = false;
    }
  }

  void emailChanged(String val) {
    eMail.value = val;
    debugPrint("güncel email : " + eMail.value);
  }

  void passwordChanged(String val) {
    password.value = val;
    debugPrint("güncel password : " + password.value);
  }

  void namesurnameChanged(String val) {
    nameSurname.value = val;
  }

  validatePassword() {
    String pattern = r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$";
    RegExp regex = RegExp(pattern);
    if (password.value.isEmpty || !regex.hasMatch(password.value)) {
      isLogin.value = false;
      return passwordError.value =
          "En az sekiz karakter, en az bir büyük harf, bir küçük harf ve bir sayı giriniz";
    } else {
      passwordError.value = null;
      return isLogin.value = true;
    }
  }

  validateEmail() {
    String pattern =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?)*$";
    RegExp regex = RegExp(pattern);
    if (eMail.value.isEmpty ||
        !regex.hasMatch(eMail.value) ||
        !eMail.value.endsWith("com")) {
      isLogin.value = false;
      return emailError.value = 'Lütfen e maili doğru varyasyonda giriniz';
    } else {
      emailError.value = null;
      return isLogin.value = true;
    }
  }


  void login() {
    if (isLogin.isFalse) {
      validateEmail();
      validatePassword();
      if (isLogin.isTrue) {
        Get.toNamed(AppRoutes.Home);
      }
    } else {
      Get.toNamed(AppRoutes.Home);
    }
  }
}
