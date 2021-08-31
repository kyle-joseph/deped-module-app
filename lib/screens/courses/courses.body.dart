import 'package:flutter/material.dart';
import 'package:module_app/components/folder.dart';
import 'package:module_app/components/pdf.dart';

class CoursesBody extends StatelessWidget {
  final String title;
  CoursesBody(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: GridView.count(
        crossAxisCount: 2,
        children: [
          Folder('AP 3', Color(0xff71777F)),
          Folder('English 3', Color(0xff71777F)),
          Folder('ESP 3', Color(0xff71777F)),
          Folder('Filipino 3', Color(0xff71777F)),
          Folder('MAPEH 3', Color(0xff71777F)),
          Folder('Math 3', Color(0xff71777F)),
          Folder('MTB-MLE 3', Color(0xff71777F)),
          Folder('Science 3', Color(0xff71777F)),
        ],
      ),
    );
  }
}
