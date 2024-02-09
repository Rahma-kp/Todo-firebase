import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "sdfghj",
          style: GoogleFonts.aBeeZee(color: Colors.black),
        ),
      ),
      body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text('Name:  ${"Rahma"}',style: GoogleFonts.aBeeZee(color: Colors.black,fontSize: 25),),
        Text('Course:  ${"BCA"}',style: GoogleFonts.aBeeZee(color: Colors.black,fontSize: 25),),
        Text('Age:  ${"20"}',style: GoogleFonts.aBeeZee(color: Colors.black,fontSize: 25),),
        ])
        ),
        
    );
  }
}
