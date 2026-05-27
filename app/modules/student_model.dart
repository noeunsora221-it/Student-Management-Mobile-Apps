class StudentModel{
      final int id;
      final String name;
      final String email;

      StudentModel({
        required this.id,
        required this.name,
        required this.email,
      });

      Map<String, dynamic>toMap(){
          return {
            'id' : id,
            'name' : name,
            'email' : email,
          };
      }

      factory StudentModel.fromJson(Map<String, dynamic> map){
        return StudentModel(
          id: map['id'],
           name: map['name'],
            email: map['email'],
            );
      }





      
}