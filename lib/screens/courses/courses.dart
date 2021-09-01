import 'package:flutter/material.dart';
import 'package:module_app/screens/courses/courses.body.dart';

class CoursesScreen extends StatelessWidget {
  final String quarterTitle;
  final int quarterIndex;
  const CoursesScreen({required this.quarterTitle, required this.quarterIndex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          quarterTitle,
          style: TextStyle(fontFamily: 'Arial', fontWeight: FontWeight.w700),
        ),
      ),
      body: CoursesBody(quarterTitle: quarterTitle, quarterIndex: quarterIndex),
    );
  }
}
