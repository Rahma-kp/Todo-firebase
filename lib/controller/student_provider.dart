
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:todo/model/student_model.dart';
import 'package:todo/services/service.dart';


class StudentProvider extends ChangeNotifier {
  TextEditingController namecontoller = TextEditingController();
  TextEditingController clascontoller = TextEditingController();
  TextEditingController agecontoller = TextEditingController();
  TextEditingController rollnocontoller = TextEditingController();


  // ignore: prefer_final_fields
  FirebaseService _firebaseService = FirebaseService();
  String uniquename = DateTime.now().microsecondsSinceEpoch.toString();
  String downloadurl = '';

  Stream<QuerySnapshot<StudentModel>> getData() {
    return _firebaseService.studentref.snapshots();
  }

   addStudent(StudentModel student) async {
    await _firebaseService.studentref.add(student);
    notifyListeners();
  }

  void deleteStudent(String id) async {
    await _firebaseService.studentref.doc(id).delete();
    notifyListeners();
  }

   updateStudent(id, StudentModel student) async {
    await _firebaseService.studentref.doc(id).update(student.toJson());
    notifyListeners();
  }

   imageAdder(image) async {
    Reference folder = _firebaseService.storage.ref().child('images');
    Reference images = folder.child("$uniquename.jpg");
    try {
      await images.putFile(image);
      downloadurl = await images.getDownloadURL();
      notifyListeners();
      // ignore: avoid_print
      print(downloadurl);
    } catch (e) {
      throw Exception(e);
    }
  }



}
