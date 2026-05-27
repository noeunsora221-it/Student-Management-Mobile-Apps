import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:student_management_apps/app/modules/attendance/views/attendance_view.dart';
import 'package:student_management_apps/app/modules/auth/views/login_screen.dart';
import 'package:student_management_apps/app/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:student_management_apps/app/modules/profile/views/profile_screen.dart';
import 'package:student_management_apps/app/modules/students/views/student_list_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> menuItems = [
      {
        "title": "Profile",
        "image":
            "https://i.pinimg.com/736x/b9/e0/e3/b9e0e30ac1ec95077b7e1d0abd250e5d.jpg",
      },
      {
        "title": "Attendance",
        "image":
            "https://i.pinimg.com/736x/2e/0c/14/2e0c148634571ad25d39377145a92203.jpg",
      },
      {
        "title": "Assignment",
        "image":
            "https://i.pinimg.com/736x/ac/43/75/ac4375966c7240b4da2e3b671ffdc289.jpg",
      },
      {
        "title": "Homework",
        "image":
            "https://i.pinimg.com/736x/b7/f8/c9/b7f8c98acadcb5fbc35ec36668a14748.jpg",
      },
      {
        "title": "Classwork",
        "image":
            "https://i.pinimg.com/736x/18/dc/cc/18dccce0f5cd2aba581da8b50f8440d8.jpg",
      },
      {
        "title": "Notes",
        "image":
            "https://i.pinimg.com/736x/68/b6/d0/68b6d01fa5275932f8dc753891571836.jpg",
      },
      {
        "title": "Course",
        "image":
            "https://i.pinimg.com/736x/41/8a/3b/418a3b99415d9c692402f7e608baeb8c.jpg",
      },
      {
        "title": "Grade",
        "icon":
            "https://i.pinimg.com/736x/77/e2/85/77e2850eb74ad97e8c377fe6f2e065ad.jpg",
      },
      {
        "title": "Task",
        "icon":
            "https://i.pinimg.com/1200x/f3/7d/ce/f37dce61c50136e8f7ee1f5fc46d47db.jpg",
      },
    ];

    return Scaffold(
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 215, 112, 112),
        child: ListView(
          children: [
            const SizedBox(height: 90),
            const Row(
              children: [
                Expanded(child: Divider()),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text("Students Apps", style: TextStyle(fontSize: 16)),
                ),
                Expanded(child: Divider()),
              ],
            ),

            drawerItem(Icons.person, "Profile"),
            drawerItem(Icons.dashboard, "Dashboard"),
            drawerItem(Icons.people, "Attendance"),
            drawerItem(Icons.assignment, "Assignment"),
            drawerItem(Icons.home_work, "Homework"),
            drawerItem(Icons.class_, "Classwork"),
            drawerItem(Icons.note_alt, "Notes"),
            drawerItem(Icons.task, "Task"),
            drawerItem(Icons.app_registration, "Register"),
            drawerItem(Icons.school, "Lecturer Teacher"),
            drawerItem(Icons.list, "List Students"),

            const Row(
              children: [
                Expanded(child: Divider()),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text("Category", style: TextStyle(fontSize: 16)),
                ),
                Expanded(child: Divider()),
              ],
            ),

            drawerItem(Icons.settings, "Setting"),
            drawerItem(Icons.logout, "Logout"),
          ],
        ),
      ),

      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 53, 144, 144),
        centerTitle: true,

        title: const Text(
          "Dashboard",
          style: TextStyle(
            fontSize: 22,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 5,
          ),
        ),

        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_active_rounded,
              size: 28,
              color: Colors.white,
            ),
          ),

          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.qr_code_scanner,
              size: 28,
              color: Colors.white,
            ),
          ),

          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginScreen()),
              );
            },
            icon: const Icon(Icons.login, size: 30, color: Colors.white),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: double.infinity,
                  height: 260,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: NetworkImage(
                        "https://i.pinimg.com/webp85/1200x/c0/8d/2f/c08d2f62f3ceae921eb7cd45b2f154b1.webp",
                      ),
                      fit: BoxFit.cover,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.4),
                        blurRadius: 10,
                        spreadRadius: 2,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                ),

                BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),

                  child: Container(
                    width: double.infinity,
                    height: 260,
                    color: Colors.black.withOpacity(0.1),
                  ),
                ),

                Positioned(
                  bottom: 10,
                  child: Column(
                    children: [
                      const CircleAvatar(
                        radius: 70,
                        backgroundImage: NetworkImage(
                          "https://i.pinimg.com/736x/10/d3/88/10d388147e504490249e897c6c914b21.jpg",
                        ),
                      ),

                      SizedBox(height: 15),

                      Text(
                        "University Students",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            Padding(
              padding: EdgeInsets.all(16),
              child: GridView.builder(
                itemCount: menuItems.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 0.9,
                ),

                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      switch (menuItems[index]['title']) {
                        case "Profile":
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProfileScreen(),
                            ),
                          );
                          break;
                        case "Attendance":
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AttendanceView(),
                            ),
                          );
                          break;
                        case "Assignment":
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AssignmentView(),
                            ),
                          );
                          break;
                        case "Homework":
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeworkScreen(),
                            ),
                          );
                          break;
                        case "Classwork":
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ClassworkScreen(),
                            ),
                          );
                          break;
                        case "Notes":
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const NotesScreen(),
                            ),
                          );
                          break;
                        case "Course":
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CourseScreen(),
                            ),
                          );
                          break;
                        case "Grade":
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const GradeScreen(),
                            ),
                          );
                          break;
                        case "Task":
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const TaskScreen(),
                            ),
                          );
                          break;
                      }
                    },
                    child: MenuCard(
                      title: menuItems[index]['title'],
                      imageUrl:
                          menuItems[index]['image'] ??
                          menuItems[index]['icon'] ??
                          "",
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "E-Learning",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget drawerItem(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon, size: 28, color: Colors.black),
      title: Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      onTap: () {},
    );
  }
}

class MenuCard extends StatelessWidget {
  final String title;
  final String imageUrl;

  const MenuCard({super.key, required this.title, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 6,
            spreadRadius: 2,
          ),
        ],
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 28,
            backgroundColor: Colors.blue.shade100,
            backgroundImage: NetworkImage(imageUrl),
          ),

          const SizedBox(height: 10),

          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}

class AssignmentController extends GetxController {
  RxList<Map<String, dynamic>> assignments = <Map<String, dynamic>>[].obs;

  void addAssignment(String title) {
    assignments.add({"title": title});
  }

  void deleteAssignment(int index) {
    assignments.removeAt(index);
  }
}

class AssignmentView extends StatelessWidget {
  AssignmentView({super.key});

  final AssignmentController controller = Get.put(AssignmentController());

  final TextEditingController titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      appBar: AppBar(title: const Text("Assignment"), centerTitle: true),

      body: Column(
        children: [
          // TOP IMAGE CARD
          Container(
            width: double.infinity,
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  blurRadius: 8,
                  spreadRadius: 2,
                ),
              ],
            ),

            child: Column(
              children: [
                Image.network(
                  "https://cdn-icons-png.flaticon.com/512/3135/3135755.png",
                  height: 120,
                ),

                const SizedBox(height: 15),

                const Text(
                  "Assignment",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),

          // LIST
          Expanded(
            child: Obx(() {
              if (controller.assignments.isEmpty) {
                return const Center(
                  child: Text("No Assignment", style: TextStyle(fontSize: 18)),
                );
              }

              return ListView.builder(
                itemCount: controller.assignments.length,

                itemBuilder: (context, index) {
                  final assignment = controller.assignments[index];

                  return Card(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 8,
                    ),

                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.purple,
                        child: Text(
                          "${index + 1}",
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),

                      title: Text(assignment["title"]),

                      trailing: IconButton(
                        icon: const Icon(Icons.delete, color: Colors.red),

                        onPressed: () {
                          controller.deleteAssignment(index);
                        },
                      ),
                    ),
                  );
                },
              );
            }),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),

        onPressed: () {
          Get.defaultDialog(
            title: "Add Assignment",

            content: TextField(
              controller: titleController,
              decoration: const InputDecoration(
                hintText: "Enter Assignment Title",
              ),
            ),

            textConfirm: "Save",

            onConfirm: () {
              if (titleController.text.isNotEmpty) {
                controller.addAssignment(titleController.text);

                titleController.clear();

                Get.back();
              }
            },
          );
        },
      ),
    );
  }
}

class HomeworkScreen extends StatelessWidget {
  const HomeworkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class ClassworkScreen extends StatelessWidget {
  const ClassworkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class CourseScreen extends StatelessWidget {
  const CourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class GradeScreen extends StatelessWidget {
  const GradeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
