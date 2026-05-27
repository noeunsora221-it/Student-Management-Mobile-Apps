import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/attendance_controller.dart';

class AttendanceView extends StatefulWidget {
  const AttendanceView({super.key});

  @override
  State<AttendanceView> createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceView> {
  List<Map<String, dynamic>> students = [
    {"name": "Sok Dara", "present": false},
    {"name": "Chan Sophea", "present": false},
    {"name": "Kim Lyheng", "present": false},
    {"name": "Noun Piseth", "present": false},
    {"name": "Sam Sophat", "present": false},
  ];

  int get totalPresent =>
      students.where((student) => student["Present"] == true).length;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student Attendance"),
        centerTitle: true,
      ),

      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            color: Colors.blue.shade100,
            child: Text(
              "Present: $totalPresent / ${students.length}",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: students.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Text(students[index]["name"][0]),
                    ),

                    title: Text(students[index]["name"]),

                    trailing: Checkbox(
                      value: students[index]["present"],
                      onChanged: (value) {
                        setState(() {
                          students[index]["present"] = value!;
                        });
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text("Attendance Summary"),
              content: Text(
                "Total Present: $totalPresent\n"
                "Total Absent: ${students.length - totalPresent}",
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("OK"),
                ),
              ],
            ),
          );
        },
        child: const Icon(Icons.check),
      ),
    );
  }
}
