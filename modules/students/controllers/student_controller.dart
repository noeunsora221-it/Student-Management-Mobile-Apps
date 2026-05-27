import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';
import 'package:http/http.dart' as http;
import 'package:student_management_apps/app/modules/student_model.dart';
import 'package:student_management_apps/app/services/api_service.dart';

class StudentController extends GetxController {
  final ApiService apiService = ApiService();

  var students = <StudentModel>[].obs;
  var isLoading = false.obs;

  @override
  void onInit() {
    loadStudents();
    super.onInit();
  }

  Future<void> loadStudents() async {
    isLoading.value = true;

    try {
      students.value = await apiService.fetchStudent();
    } catch (e) {
      Get.snackbar("Error", e.toString());
    }

    isLoading.value = false;
  }
}
