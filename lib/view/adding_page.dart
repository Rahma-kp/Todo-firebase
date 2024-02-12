import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:todo/controller/image_provider.dart';
import 'package:todo/view/home_screen.dart';

// ignore: must_be_immutable
class AddingScreen extends StatelessWidget {
  AddingScreen({super.key});
  TextEditingController namecontoller = TextEditingController();
  TextEditingController clascontoller = TextEditingController();
  TextEditingController agecontoller = TextEditingController();

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
         Consumer<ImageProviders>(
  builder: (context, value, child) {
    return CircleAvatar(
      radius: 70,
      backgroundColor: Colors.grey, 
      backgroundImage: value.selectedImage != null
          ? Image.file(value.selectedImage!).image 
          : null,
    );
  },
),


          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<ImageProviders>(
                builder: (context, value, child) => ElevatedButton(
                  onPressed: () {
                    value.setImage(ImageSource.camera);
                  },
                  child: const Icon(Icons.camera),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Consumer<ImageProviders>(
                builder: (context, value, child) => ElevatedButton(
                  onPressed: () {
                    value.setImage(ImageSource.gallery);
                  },
                  child: const Icon(Icons.add_a_photo_outlined),
                ),
              )
            ],
          ),
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
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ));
              },
              child: const Text("Add"))
        ]),
      ),
    );
  }
}
