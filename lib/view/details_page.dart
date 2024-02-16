import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo/model/student_model.dart';

class DetailsScreen extends StatelessWidget {
  final StudentModel student;
  const DetailsScreen({required this.student});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          student.name??"Student details",
          style: GoogleFonts.aBeeZee(color: Colors.black),
        ),
      ),
      body: Center(child: Container(color:  Color.fromARGB(221, 173, 167, 167),height: 200,width: 200,
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text('Name:  ${student.name}',style: GoogleFonts.aBeeZee(color: Colors.black,fontSize: 25),),
          Text('Class:  ${student.clas}',style: GoogleFonts.aBeeZee(color: Colors.black,fontSize: 25),),
          Text('Roll-no:  ${student.rollno}',style: GoogleFonts.aBeeZee(color: Colors.black,fontSize: 25),),
          Text('Age:  ${student.age}',style: GoogleFonts.aBeeZee(color: Colors.black,fontSize: 25),),
          ]),
      )
        ),
        
    );
  }
}
