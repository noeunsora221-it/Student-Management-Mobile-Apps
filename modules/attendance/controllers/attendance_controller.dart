import 'package:get/get.dart';

import '../../../data/models/student_model.dart';
import '../../../data/services/attendance_service.dart';

class AttendanceController extends GetxController {
  final AttendanceService service = AttendanceService();

  RxList<StudentModel> students = <StudentModel>[].obs;

  RxBool isLoading = false.obs;

  @override
  void onInit() {
    fetchStudents();
    super.onInit();
  }

  Future<void> fetchStudents() async {
    isLoading.value = true;

    students.value = await service.getStudents();

    isLoading.value = false;
  }

  Future<void> addStudent(String name) async {
    if (name.isEmpty) return;

    await service.addStudent(StudentModel(name: name, present: false));

    fetchStudents();
  }

  Future<void> toggleAttendance(StudentModel student) async {
    student.present = !student.present;

    await service.updateStudent(student);

    fetchStudents();
  }

  Future<void> deleteStudent(int id) async {
    await service.deleteStudent(id);

    fetchStudents();
  }

  int get totalPresent {
    return students.where((student) => student.present).length;
  }
}
