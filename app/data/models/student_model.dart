class StudentModel{
      int? id;
      String name;
      bool present;

      StudentModel({
          this.id,
          required this.name,
          required this.present,
      });


      Map<String, dynamic> toMap(){
          return {
              'id' : id,
              'name' : name,
              'present' : present ? 1 : 0

          };
      }


      factory StudentModel.fromMap(
        Map<String, dynamic> map,
      ){
          return StudentModel(
            id: map['id'],
            name: map['name'],
            present: map['present']== 1,
            
            );
            
      }
}