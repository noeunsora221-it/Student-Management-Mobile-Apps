import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';
import 'package:student_management_apps/app/modules/auth/controllers/auth_controller.dart';
import 'package:student_management_apps/app/modules/dashboard/views/dashboard_screen.dart';

class RegisterScreen extends GetView<AuthController> {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // TOP UI
            Container(
              height: 370,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFFF8E9E),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(80),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    child: Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(130),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Sign In",
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 30),

                  const Text(
                    "First Name",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  CustomTextField(
                    controller: controller.emailController,
                    hinText: "enter first name",
                    icon: Icons.email,
                  ),

                  const SizedBox(height: 25),
                  const Text(
                    "Last Name",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),

                  SizedBox(height: 10),

                  // making as OBX -> get - x
                  Obx(
                    () => CustomTextField(
                      controller: controller.passwordController,
                      hinText: "enter password",
                      icon: Icons.lock,
                      obscureText: controller.isloading(),

                      suffixIcon: IconButton(
                        onPressed: controller.isloading.toString,
                        icon: Icon(
                          controller.isloading()
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                      ),
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Get x
                      Obx(
                        () => Row(
                          children: [
                            Checkbox(
                              value: controller.rememberMe.value,
                              onChanged: controller.rememberMe,
                              activeColor: const Color(0xFFFF8E9E),
                            ),
                            const Text("Remember Me"),
                          ],
                        ),
                      ),

                      TextButton(
                        onPressed: () {},

                        child: const Text(
                          "Forgot password",
                          style: TextStyle(color: const Color(0xFFFF8E9E)),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 40),

                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: Obx(
                      () => ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.redAccent,
                        ),
                        onPressed: controller.isloading.value
                            ? null
                            : () async {
                                await controller.login;

                                // navigate to new screen
                                Get.to(() => const DashboardScreen());
                              },
                        child: controller.isloading.value
                            ? const CircularProgressIndicator(
                                color: Colors.white,
                              )
                            : const Text(
                                "Login",
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                      ),
                    ),
                  ),

                  // checking accounting is validated
                  const SizedBox(height: 30),

                  Center(
                    child: RichText(
                      text: const TextSpan(
                        text: "Don't have an account!",
                        style: TextStyle(color: Colors.blueGrey),

                        children: [
                          TextSpan(
                            text: "  Sign Up",
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hinText;
  final IconData icon;
  final bool obscureText;
  final Widget? suffixIcon;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.hinText,
    required this.icon,
    this.obscureText = false,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Colors.grey),
        suffixIcon: suffixIcon,
        hintText: hinText,
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.pinkAccent),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.pink),
        ),
      ),
    );
  }
}
