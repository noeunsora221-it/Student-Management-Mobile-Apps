import 'package:student_management_apps/DB/DBHelper.dart';
import 'package:student_management_apps/app/modules/student_model.dart';

class LocalService{
      Future<int> addStudent(StudentModel student) async{
            final db = await DBHelper.initDB();
            return db.insert('students', student.toMap());


      }

      Future<List<StudentModel>> getStudents() async{
              final db = await DBHelper.initDB();
              final result = await db.query('students');

              return result.map((e)=> StudentModel.fromJson((e))).toList();


      }

      Future<int> deleteStudent(int id)async{
            final db = await DBHelper.initDB();

          return db.delete('students', where: 'id = ?', whereArgs: [id]);


          
      }
}