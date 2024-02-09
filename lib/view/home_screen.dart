import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo/view/adding_page.dart';
import 'package:todo/view/details_page.dart';
import 'package:todo/view/editing_screen.dart';
import 'package:todo/widget/delete_alert.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Studet",
          style: GoogleFonts.aboreto(
              color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: 5, right: 5),
            child: Card(
              color: const Color.fromARGB(66, 160, 160, 160),
              child: SizedBox(
                height: 80,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(10),
                      child: CircleAvatar(
                          radius: 35,
                          backgroundColor: Color.fromARGB(176, 0, 0, 0)),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "asdfaaaaa",
                            style: GoogleFonts.aBeeZee(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Text("fffffggggggg")
                        ]),
                        SizedBox(
                         child: Row( children: [
                           IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => EditingScreen(),
                        ));
                      },
                      icon: const Icon(
                        Icons.edit,
                        color: Color.fromARGB(255, 8, 72, 10),
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          alertdelete(context);
                        },
                        icon: const Icon(
                          Icons.delete,
                          color: Color.fromARGB(255, 144, 20, 11),
                        )),
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  DetailsScreen(),));
                        },
                        icon: const Icon(Icons.arrow_forward_ios_outlined))
                         ]),
                        ),
                   
                  ],
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Color.fromARGB(255, 1, 1, 1),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => AddingScreen(),
            ));
          },
          label: Text(
            "Add Detils",
            style: GoogleFonts.aBeeZee(
                color: Colors.white, fontWeight: FontWeight.bold),
          )),
    );
  }
}
