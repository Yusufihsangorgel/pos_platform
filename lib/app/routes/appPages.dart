import 'package:get/get.dart';
import 'package:pos_platform/app/pages/home/view/homePart.dart';
import 'package:pos_platform/app/pages/login/view/loginPart.dart';

part 'appRoutes.dart';

class AppPages {
  static const INITIAL = AppRoutes.Login;

  static final routes = [
    GetPage(
      name: AppRoutes.Login,
      page: () => LoginView(),
      transition: Transition.downToUp,
    ),
    GetPage(
      name: AppRoutes.Home,
      page: () =>  HomeView(),
      transition: Transition.downToUp,
    ),
  ];
}
