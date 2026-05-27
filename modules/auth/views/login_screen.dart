import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:student_management_apps/app/modules/auth/views/register_screen.dart';
import 'package:student_management_apps/app/widgets/custom_textfield.dart';
import '/app/routes/app_pages.dart';
import '/app/modules/auth/controllers/auth_controller.dart';
import '/app/widgets/custom_textfield.dart';

class LoginScreen extends GetView<AuthController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AuthController());
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 140, 222, 222),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),

              // Top Screen
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 40,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.school, size: 150, color: Colors.red),
                    const SizedBox(height: 20),
                    const Text(
                      "HELLO",
                      style: TextStyle(
                        fontSize: 60,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 2),
                    const Text(
                      "Register Students",
                      style: TextStyle(fontSize: 16),
                    ),

                    const SizedBox(height: 25),

                    // Login page
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(25),
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 193, 228, 227),

                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Login
                          Text(
                            "Login",
                            style: TextStyle(
                              fontSize: 32,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 30),

                          CustomTextfield(
                            controller: controller.emailController,
                            hint: "Email",
                            icon: Icons.email,
                            obscureText: true,
                          ),
                          CustomTextfield(
                            controller: controller.passwordController,
                            hint: "Password",
                            icon: Icons.lock_outline_rounded,
                            obscureText: true,
                          ),

                          Align(
                            alignment: AlignmentGeometry.centerRight,
                            child: TextButton(
                              onPressed: () {},
                              child: const Text("Forget Password"),
                            ),
                          ),

                          const SizedBox(height: 10),

                          // Login Buttons
                          SizedBox(
                            width: double.infinity,
                            height: 55,
                            child: Obx(
                              () => SizedBox(
                                height: 55,
                                width: double.infinity,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color.fromARGB(
                                      0,
                                      2,
                                      118,
                                      99,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                  onPressed: controller.isloading.value
                                      ? null
                                      : () {
                                          // Login functions
                                          controller.login();

                                          // naivgatate to new screen
                                          Get.to(() => const RegisterScreen());

                                          // navigate to back screens
                                        },
                                  child: controller.isloading.value
                                      ? const CircularProgressIndicator()
                                      : const Text("Login"),
                                ),
                              ),
                            ),
                          ),

                          const SizedBox(height: 30),
                          Row(
                            children: const [
                              Expanded(child: Divider()),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Text("or Login with"),
                              ),

                              Expanded(child: Divider()),
                            ],
                          ),

                          const SizedBox(height: 25),

                          // Social Buttons
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              socialButton(Icons.facebook),
                              const SizedBox(width: 15),
                              socialButton(Icons.telegram),
                              const SizedBox(width: 15),
                              socialButton(Icons.snapchat_outlined),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget socialButton(IconData icon) {
  return Container(
    height: 55,
    width: 55,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
    ),

    child: Icon(icon, size: 30),
  );
}
