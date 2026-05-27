import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DBHelper{
      static Database? _db;

      static Future<Database> initDB() async{
            
            if(_db != null) return _db!;


            String path = join(await getDatabasesPath(), "students.db");

            _db = await openDatabase(
              path,
              version: 1,
              onCreate: (db, version) async{
                    await db.execute('''

                          CREATE TABLE students(
                            id INTEGER PRIMARY KEY AUTOINCREMENT,
                            name TEXT,
                            age INTEGER,
                            class TEXT,
                            email TEXT,

                          )

''');
              },
            );

            return _db!;

      }
}