class StudentModel {
  String? name;
  String? clas;
  String? image;
  int? age;
  StudentModel({this.name, this.clas, this.age, this.image});

  factory StudentModel.fromJson(Map<String, dynamic> json) {
    return StudentModel(
        image: json['image'],
        age: json['age'],
        clas: json['clas'],
        name: json['name']);
  }
  Map<String, dynamic> toJson() {
    return {'name': name, 'age': age, 'clas': clas, 'image': image};
  }
}
