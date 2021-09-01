import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pdf extends StatelessWidget {
  final String pdfFilename;
  final Color pdfColor;

  Pdf({required this.pdfFilename, required this.pdfColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: () {
          // Navigator.push(
          //     context,
          //     CupertinoPageRoute(
          //         builder: (context) => CoursesScreen(folderTitle)));
        },
        child: Column(
          children: [
            Icon(
              Icons.picture_as_pdf,
              color: pdfColor,
              size: MediaQuery.of(context).size.width * 0.32,
            ),
            Text(
              pdfFilename,
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
