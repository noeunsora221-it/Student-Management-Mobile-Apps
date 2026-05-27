import 'package:get/get.dart';
import 'package:flutter/material.dart';

class AuthController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  var isloading = false.obs;
  var obscureText = false.obs;
  var rememberMe = false.obs;

  void togglePassword() {
    obscureText.value = !obscureText.value;
  }

  void toggleRemember(bool? value) {
    rememberMe.value = value ?? false;
  }

  // create validated emails
  bool isValidEmail(String email) {
    return GetUtils.isEmail(email);
  }

  void login() {
    // store new email and password
    String demoemail = "sophal123@gmail.com";
    String demopassword = "12345";

    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    // validated checking
    if (email.isEmpty || password.isEmpty) {
      Get.snackbar(
        "Error...!",
        "Error email and password!",
        snackPosition: SnackPosition.BOTTOM,
      );

      return;
    }

    if (email == demoemail && password == demopassword) {
      Get.snackbar(
        "Succesfully",
        "Login succusfully",
        snackPosition: SnackPosition.BOTTOM,
      );
    } else {
      Get.snackbar("Error", "Invalid Error");
    }

    isloading.value = true;

    Future.delayed(const Duration(milliseconds: 10), () {
      isloading.value = false;

      Get.snackbar(
        "Succesfully...!",
        "Login succesfully...!",
        snackPosition: SnackPosition.BOTTOM,
      );
    });
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();

    super.onClose();
  }
}
