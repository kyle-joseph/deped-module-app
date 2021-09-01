import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:module_app/components/folder.dart';
// import 'package:module_app/components/pdf.dart';

class CoursesBody extends StatefulWidget {
  final String quarterTitle;
  final int quarterIndex;
  CoursesBody({required this.quarterTitle, required this.quarterIndex});

  @override
  _CoursesBodyState createState() => _CoursesBodyState();
}

class _CoursesBodyState extends State<CoursesBody> {
  List data = [];

  @override
  void initState() {
    super.initState();
    this.loadPdfLocations();
  }

  void loadPdfLocations() async {
    var jsonText = await rootBundle.loadString('assets/pdfFilenames.json');
    setState(() => data = json.decode(jsonText));
    // print(data[0]["Quarter1"].length);
  }

  // ignore: non_constant_identifier_names
  Widget FolderGrid() {
    return GridView.builder(
      // ignore: unnecessary_null_comparison
      itemCount: data.length == 0 || data[widget.quarterIndex].length == 0
          ? 0
          : data[widget.quarterIndex].length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (BuildContext context, int index) {
        return FolderPdf(
            quarterTitle: widget.quarterTitle,
            courseTitle: data[widget.quarterIndex][index]["course"],
            courseColor: Color(0xff71777F),
            quarterIndex: widget.quarterIndex,
            courseIndex: index);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: FolderGrid(),
    );
  }
}
