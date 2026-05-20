import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/app_route.dart';
import 'app/routes/app_page.dart';

void main(List<String> args) {
  runApp(const App());
}


class App extends StatelessWidget {
  const App({super.key});

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

