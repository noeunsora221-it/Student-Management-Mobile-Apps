import '/app/data/models/student_model.dart';
import '/app/data/providers/db_provider.dart';

// CRUD Operations

class AttendanceService{
        Future<int> addStudent(StudentModel student)async{

              final db = await DbProvider.database;

              return await db.insert('students', student.toMap());
        }

        Future<List<StudentModel>> getStudents()async{
              final db = await DbProvider.database;

            final List<Map<String, dynamic>> map = await db.query('students');
            return List.generate(
              map.length
              , (index){
                  return StudentModel.fromMap(
                    map[index],
                  );
              });


        }


        Future<int> updateStudent(StudentModel student)async{
              final db = await DbProvider.database;

              return db.update('students', student.toMap(), where: 'id = ?', whereArgs: [student.id]);
        }

        Future<int> deleteStudent(int id)async{
              final db = await DbProvider.database;

              return db.delete(
                'students',
                  where: 'id = ?',
                  whereArgs: [id],
              );
              
        }



}