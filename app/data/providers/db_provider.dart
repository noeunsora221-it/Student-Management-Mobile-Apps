import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';


class DbProvider{
      
      static Database? _database;

      static Future<Database> get database async{
            if(_database != null){
                  return _database!;
            }

            _database = await initDB();

            return _database!;
      }


      static Future<Database> initDB()async{
          String path = join(
              await getDatabasesPath(), 'attendance.db',
          );


         
          return await openDatabase(
                path, version: 1,
                onCreate: (db, version) async{
                      await db.execute(
                              '''


                      CREATE TABLE students(
                          id INTEGER PRIMARY KEY AUTOINCREMENT,
                          name TEXT,
                          present INTEGER
                      
                      
                      )
                              '''
                      );
                },
          );

      }

      


}