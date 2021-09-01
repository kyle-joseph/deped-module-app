import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:module_app/components/folder.dart';
// import 'package:module_app/components/pdf.dart';

class CoursesBody extends StatefulWidget {
  final String title;
  CoursesBody(this.title);

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

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: GridView.builder(
        // ignore: unnecessary_null_comparison
        itemCount: data.length == 0 ? 0 : data[0]["Quarter1"].length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (BuildContext context, int index) {
          return FolderPdf(
              data[0]["Quarter1"][index]["course"], Color(0xff71777F));
        },
      ),
    );
  }
}
