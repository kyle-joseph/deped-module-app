import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:module_app/screens/single_course/singleCourse.dart';

class Pdf extends StatelessWidget {
  final String pdfFilename;
  final Color pdfColor;
  final String path;

  Pdf({required this.pdfFilename, required this.pdfColor, required this.path});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (context) => SingleCourse(path: path),
            ),
          );
        },
        child: Column(
          children: [
            Icon(
              Icons.picture_as_pdf,
              color: pdfColor,
              size: MediaQuery.of(context).size.width * 0.27,
            ),
            Text(
              pdfFilename,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 14,
                color: Color(0xff6E7274),
              ),
            )
          ],
        ),
      ),
    );
  }
}
