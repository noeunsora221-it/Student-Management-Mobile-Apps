import 'package:http/http.dart' as http;
import '/app/modules/student_model.dart';
import 'dart:convert';


class ApiService{
      final String baseUrl = 'https://your-api.com/api';

      Future<List<StudentModel>> fetchStudent() async{
            final respone = await http.get(Uri.parse('$baseUrl/students'));

            if(respone.statusCode == 200){
                  final data = jsonDecode(respone.body) as List;

                  return data.map((e)=> StudentModel.fromJson(e)).toList();


            }else{
              throw Exception('failure to load students');
            }
      }

      Future<void> addStudent(StudentModel student) async{
                await http.post(
                  Uri.parse("$baseUrl/students"),
                  headers: {"content-Type" : "application/json"},
                  body: jsonEncode(student.toString())
                  
                );


      }
}