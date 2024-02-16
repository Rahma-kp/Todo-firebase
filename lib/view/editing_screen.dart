import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:todo/controller/student_provider.dart';
import 'package:todo/model/student_model.dart';


// ignore: must_be_immutable
class EditingScreen extends StatefulWidget {
  StudentModel student;
  String id;
  EditingScreen({super.key, required this.student, required this.id});

  @override
  State<EditingScreen> createState() => _EditingScreenState();
}

class _EditingScreenState extends State<EditingScreen> {
  TextEditingController rollnoController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController clasController = TextEditingController();
  @override
  void initState() {
    super.initState();
    nameController.text = widget.student.name ?? '';
    ageController.text = widget.student.age ?? '';
    rollnoController.text = widget.student.rollno ?? '';
    clasController.text = widget.student.clas ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Edit",
            style: GoogleFonts.aBeeZee(color: Colors.black),
          ),
          centerTitle: true),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                    hintText: "Enter your name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)))),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
                controller: ageController,
                decoration: InputDecoration(
                    hintText: "Enter your age",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)))),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
                controller: clasController,
                decoration: InputDecoration(
                    hintText: "Enter your class",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)))),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
                controller: rollnoController,
                decoration: InputDecoration(
                    hintText: "Enter your Roll-Number",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)))),
          ),
          ElevatedButton(
              onPressed: () {
                editStudent(context);
              },
              child: const Text("Edit"))
        ]),
      ),
    );
  }

  editStudent(
    BuildContext context,
  ) async {
    final pro = Provider.of<StudentProvider>(context, listen: false);

    try {
      final editedname = nameController.text;
      final editedrollno = rollnoController.text;
      final editedage = ageController.text;
      final editedclas = clasController.text;

      final updatedstudent = StudentModel(
        name: editedname,
        rollno: editedrollno,
        age: editedage,
        clas: editedclas,
      );

      pro.updateStudent(widget.id, updatedstudent);

      Navigator.pop(context);
    } catch (e) {
      print("Error updating student: $e");
    }
  }
}
