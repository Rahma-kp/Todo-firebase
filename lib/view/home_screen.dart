// ignore_for_file: camel_case_types

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:todo/controller/student_provider.dart';
import 'package:todo/model/student_model.dart';
import 'package:todo/view/adding_page.dart';
import 'package:todo/view/details_page.dart';
import 'package:todo/view/editing_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Student Details",
          style: GoogleFonts.aBeeZee(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Column(children: [
        Expanded(
          child: Consumer<StudentProvider>(
            builder: (context, value, child) => Column(
              children: [
                StreamBuilder<QuerySnapshot<StudentModel>>(
                  stream: value.getData(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator());
                    } else if (snapshot.hasError) {
                      return const Center(
                        child: Text('Snapshot has error'),
                      );
                    } else {
                      List<QueryDocumentSnapshot<StudentModel>> studentsDoc =
                          snapshot.data?.docs ?? [];
                      return Expanded(
                        child: ListView.builder(
                          itemCount: studentsDoc.length,
                          itemBuilder: (context, index) {
                            final data = studentsDoc[index].data();
                            // ignore: unnecessary_null_comparison
                            if (data == null) {
                              return CircularProgressIndicator();
                            }
                            final id = studentsDoc[index].id;
                            return Card(
                              elevation: 5,
                              margin: const EdgeInsets.all(8),
                              child: ListTile(
                                title: Text(
                                  data.name ?? '',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "class: ${data.clas ?? 'N/A'}",
                                      style: const TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Text(
                                      "roll no: ${data.rollno ?? 'N/A'}",
                                      style: const TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                                leading: CircleAvatar(
                                  backgroundColor:
                                      const Color.fromARGB(255, 45, 45, 46),
                                  backgroundImage:
                                      NetworkImage(data.image ?? ''),
                                ),
                                trailing: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    IconButton(
                                      icon: const Icon(
                                        Icons.edit,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                EditingScreen(),
                                          ),
                                        );
                                      },
                                    ),
                                    IconButton(
                                      icon: const Icon(
                                        Icons.delete,
                                        color: Colors.red,
                                      ),
                                      onPressed: () {
                                        value.deleteStudent(id);
                                        // value.deleteImage(data.image);
                                      },
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  DetailsScreen(),
                                            ));
                                      },
                                      icon: const Icon(Icons.arrow_forward_ios),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ]),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddingScreen(),
            ),
          );
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
              const Color.fromARGB(255, 0, 0, 0)),
        ),
        child: Text(
          'Add Details',
          style: GoogleFonts.aBeeZee(color: Color.fromARGB(255, 249, 249, 249,),fontSize: 20),
        ),
      ),
    );
  }
}
