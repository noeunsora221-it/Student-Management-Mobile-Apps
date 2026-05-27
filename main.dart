import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:student_management_apps/app/routes/app_pages.dart';
import 'app/routes/app_route.dart';
import 'app/services/api_service.dart';
import 'app/modules/auth/views/login_screen.dart';


void main(List<String> args) async {

  
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Student Management Apps",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
