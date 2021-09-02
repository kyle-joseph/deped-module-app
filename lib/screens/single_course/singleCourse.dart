import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class SingleCourse extends StatefulWidget {
  final String path;
  const SingleCourse({required this.path});

  @override
  _SingleCourseState createState() => _SingleCourseState();
}

class _SingleCourseState extends State<SingleCourse> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("PDF Viewer"),
        ),
        body: Container(
          child: SfPdfViewer.asset(
            widget.path,
          ),
        ),
      ),
    );
  }
}
