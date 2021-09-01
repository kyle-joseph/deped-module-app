import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:module_app/screens/courses/courses.dart';
import 'package:module_app/screens/module_list/moduleList.dart';

class Folder extends StatelessWidget {
  final String folderTitle;
  final Color folderColor;
  final int quarterIndex;

  Folder(
      {required this.folderTitle,
      required this.folderColor,
      required this.quarterIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: () {
          Navigator.push(
              context,
              CupertinoPageRoute(
                  builder: (context) => CoursesScreen(
                      quarterTitle: folderTitle, quarterIndex: quarterIndex)));
        },
        child: Column(
          children: [
            Icon(
              Icons.folder,
              color: folderColor,
              size: MediaQuery.of(context).size.width * 0.32,
            ),
            Text(
              folderTitle,
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 16,
                color: Color(0xff6E7274),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FolderPdf extends StatelessWidget {
  final String quarterTitle;
  final String courseTitle;
  final Color courseColor;
  final int quarterIndex;
  final int courseIndex;

  FolderPdf(
      {required this.quarterTitle,
      required this.courseTitle,
      required this.courseColor,
      required this.quarterIndex,
      required this.courseIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: () {
          Navigator.push(
              context,
              CupertinoPageRoute(
                  builder: (context) => ModuleListScreen(
                      appbarTitle: "$quarterTitle-$courseTitle",
                      quarterIndex: quarterIndex,
                      courseIndex: courseIndex)));
        },
        child: Column(
          children: [
            Icon(
              Icons.folder,
              color: courseColor,
              size: MediaQuery.of(context).size.width * 0.32,
            ),
            Text(
              courseTitle,
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 16,
                color: Color(0xff6E7274),
              ),
            )
          ],
        ),
      ),
    );
  }
}
