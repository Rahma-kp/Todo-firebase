import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo/view/home_screen.dart';

class EditingScreen extends StatelessWidget {
  const EditingScreen({super.key});

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
          const CircleAvatar(
            radius: 70,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Icon(Icons.camera),
              ),
              const SizedBox(width: 20,),
                ElevatedButton(
                onPressed: () {},
                child: const Icon(Icons.add_a_photo_outlined),
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
              child: const Text("Edit"))
        ]),
      ),
    );
  }
}
