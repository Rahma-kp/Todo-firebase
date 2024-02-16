class StudentModel {
  String? name;
  String? clas;
 
  String? rollno;
  String? age;
  StudentModel({this.name, this.clas, this.age,this.rollno});

  factory StudentModel.fromJson(Map<String, dynamic> json) {
    return StudentModel(
     
        age: json['age'],
        clas: json['clas'],
        name: json['name'],
        rollno: json['rollno']);
  }
  Map<String, dynamic> toJson() {
    return {'name': name, 'age': age, 'clas': clas,'rollno':rollno, 
  };
  }
}
