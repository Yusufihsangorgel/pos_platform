import 'package:get/get.dart';

class HomeController extends GetxController {
  var acceptedData = 0.obs;

  void acceptData(int data) {
    acceptedData.value += data;
  }


}
