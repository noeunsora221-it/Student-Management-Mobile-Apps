import 'package:get/get.dart';
import '/app/modules/dashboard/views/dashboard_screen.dart';

class AuthController extends GetxController {
  var isloading = false.obs;

  void login(String email, String password) {
    isloading.value = true;

    Future.delayed(const Duration(seconds: 2), () {
      isloading.value = false;
      Get.offAll(() => const DashboardScreen());
    });
  }
}
