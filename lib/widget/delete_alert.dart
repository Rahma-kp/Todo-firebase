import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/controller/student_provider.dart';
Future<dynamic> alertdelete(BuildContext context) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text("Delete Confirmation"),
        content: const Text("Are you sure you want to delete this chapter?"),
        actions: [
          TextButton(
            child: const Text("cancel"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          Consumer<StudentProvider>(builder: (context, value, child) => 
             TextButton(
              onPressed: () async {
                // value.deleteStudent(id);
                Navigator.of(context).pop();
              },
              child: const Text("Delete"),
            ),
          ),
        ],
      );
    },
  );
}
