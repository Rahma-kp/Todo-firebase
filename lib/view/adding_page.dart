import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo/view/home_screen.dart';

class AddingScreen extends StatelessWidget {
  const AddingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Add Details",
            style: GoogleFonts.aBeeZee(color: Colors.black),
          ),
          centerTitle: true),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          CircleAvatar(
            radius: 70,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Icon(Icons.camera),
              ),
              SizedBox(width: 20,),
                ElevatedButton(
                onPressed: () {},
                child: Icon(Icons.add_a_photo_outlined),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Enter your name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)))),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Enter your age",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)))),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Enter your class",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)))),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ));
              },
              child: Text("Add"))
        ]),
      ),
    );
  }
}
