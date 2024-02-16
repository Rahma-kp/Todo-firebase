import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:todo/controller/student_provider.dart';
import 'package:todo/model/student_model.dart';
import 'package:todo/view/home_screen.dart';

// ignore: must_be_immutable
class AddingScreen extends StatelessWidget {
  AddingScreen({super.key});
  TextEditingController namecontoller = TextEditingController();
  TextEditingController clascontoller = TextEditingController();
  TextEditingController agecontoller = TextEditingController();
  TextEditingController rollnocontoller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Add Details",
            style: GoogleFonts.aBeeZee(color: Colors.black),
          ),
          centerTitle: true),
      body: SingleChildScrollView(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                  controller: namecontoller,
                  decoration: InputDecoration(
                      hintText: "Enter your name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)))),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                  controller: agecontoller,
                  decoration: InputDecoration(
                      hintText: "Enter your age",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)))),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                  controller: clascontoller,
                  decoration: InputDecoration(
                      hintText: "Enter your class",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)))),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                  controller: rollnocontoller,
                  decoration: InputDecoration(
                      hintText: "Enter your Roll-Number",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)))),
            ),
            ElevatedButton(
                onPressed: () {
                  addstudent(context);
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ));
                },
                child: const Text("Add"))
          ]),
        ),
      ),
    );
  }

  void addstudent(BuildContext context) async {
    final pro = Provider.of<StudentProvider>(context, listen: false);
    final name = namecontoller.text;
    final age = agecontoller.text;
    final rollno = rollnocontoller.text;
    final clas = clascontoller.text;
    final student = StudentModel(
      rollno: rollno,
      clas: clas,
      age: age,
      name: name,
    );
    pro.addStudent(student);
  }
}
