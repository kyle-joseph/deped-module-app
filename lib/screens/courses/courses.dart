import 'package:flutter/material.dart';
import 'package:module_app/screens/courses/courses.body.dart';

class CoursesScreen extends StatelessWidget {
  final String folderTitle;
  const CoursesScreen(this.folderTitle);

  @override
  Widget build(BuildContext context) {
    var data = ModalRoute.of(context)!.settings.arguments;
    print("$data hello");
    return Scaffold(
      appBar: AppBar(
        title: Text(
          folderTitle,
          style: TextStyle(fontFamily: 'Arial', fontWeight: FontWeight.w700),
        ),
      ),
      body: CoursesBody(folderTitle),
    );
  }
}
