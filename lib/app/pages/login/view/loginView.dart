part of 'loginPart.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);

  final LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(
        () => Scaffold(
            backgroundColor: Colors.blue,
            body: Container(
              alignment: Alignment.center,
              color: Colors.blue,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, bottom: 50, top: 50),
                      child: Container(
                          height: Get.height * 0.9,
                          width: Get.width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadiusum.buildContainerDecoration(23.0),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadiusum.buildContainerDecoration(23.0),
                            ),
                            child: Column(
                              children: [
                                const ShortSize(),
                                const BuildImage(image: "images/logo.png"),
                                ShortSize(),
                                BuildText(
                                  text: "Giriş Yap",
                                  color: Color(ColorConst.mavimsi),
                                  fontWeight: FontWeight.bold,
                                  fontsize: Get.height * 0.03,
                                ),
                                ShortSize(),
                                BuildText(
                                  text: "Tekrar hoş geldin",
                                  color: Color(ColorConst.mavimsi),
                                  fontWeight: FontWeight.normal,
                                  fontsize: Get.height * 0.03,
                                ),
                                const ShortSize(),
                                BuildTextFormField(
                                  changed: loginController.emailChanged,
                                  validator: (validate) {
                                    loginController.validateEmail;
                                  },
                                  text: "Email",
                                  prefixIcon: const Icon(
                                    Icons.mail,
                                    color: Colors.black,
                                  ),
                                  error: loginController.emailError.value,
                                ),
                                const ShortSize(),
                                BuildTextFormField(
                                  text: "Şifre",
                                  changed: loginController.passwordChanged,
                                  prefixIcon: const Icon(
                                    Icons.key,
                                    color: Colors.black,
                                  ),
                                  suffixIcon: IconButton(
                                      color: Colors.black,
                                      onPressed: () {
                                        loginController.showPasswordFunc();
                                      },
                                      icon: loginController.showPassword.isTrue
                                          ? const Icon(
                                              Icons.remove_red_eye_sharp)
                                          : const Icon(Icons.visibility_off)),
                                  error: loginController.passwordError.value,
                                ),
                                const ShortSize(),
                                BuildLoginButton(
                                  text: "Giriş Yap",
                                  color: Color(ColorConst.mavimsi),
                                  height: Get.height * 0.07,
                                  width: Get.width * 0.9,
                                  fontsize: Get.height * 0.03,
                                  onTap: () async {
                                    Get.toNamed(AppRoutes.Home);
                                    // loginController.login(); istersen aktif et abi sadece format testi yapıyor
                                  },
                                ),
                                const ShortSize(),
                                BuildLoginButton(
                                  text: "Şifremi unuttum",
                                  color: Color(ColorConst.mavimsi),
                                  onTap: () {},
                                  height: Get.height * 0.036,
                                  width: Get.width * 0.2,
                                  fontsize: Get.height * 0.01,
                                )
                              ],
                            ),
                          )),
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
