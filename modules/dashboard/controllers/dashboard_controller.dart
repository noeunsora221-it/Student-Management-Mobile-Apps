import 'package:flutter/material.dart';
import '/app/modules/dashboard/views/dashboard_screen.dart';

class DashboardController extends StatelessWidget {
  const DashboardController({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_active,
              size: 30,
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.install_desktop_outlined,
              size: 30,
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),

          CircleAvatar(
            radius: 27,
            backgroundImage: NetworkImage(
              "https://i.pinimg.com/736x/6c/bf/24/6cbf243664a534a2098934ccf1f2bf51.jpg",
            ),
          ),
        ],

        backgroundColor: Colors.white,

        title: Text(
          "List of Students",
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        excludeHeaderSemantics: true,
        centerTitle: false,
      ),
      backgroundColor: Colors.white,
    );
  }
}
