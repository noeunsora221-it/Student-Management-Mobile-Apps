import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:student_management_apps/app/modules/auth/bin/auth_binding.dart';
import 'app_route.dart';
import '/app/modules/auth/views/login_screen.dart';
import '/app/modules/auth/views/register_screen.dart';
import '/app/modules/dashboard/views/dashboard_screen.dart';
import '/app/modules/students/views/student_list_screen.dart';

class AppPages{
      static const INITIAL = Routes.LOGIN;

      static final routes = [
          GetPage(
            name: Routes.LOGIN,
             page: ()=> const LoginScreen(),
             binding: AuthBinding(),
             ),

             GetPage(
              name: Routes.REGISTER,
              page: ()=> const RegisterScreen(),
              
              ),

              GetPage(
               name: Routes.DASHBOARD,
               page: ()=> const DashboardScreen()
               
               ),

               GetPage(
                name: Routes.STUDENTS,
                page: ()=> const StudentListScreen(),
                
                )
      ];


}