import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import '/app/modules/auth/controllers/auth_controller.dart';


class AuthBinding extends Bindings{
      @override
  void dependencies() {

    Get.put(AuthController());
  }
}