import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:module_app/components/pdf.dart';

class ModuleListBody extends StatefulWidget {
  final int quarterIndex;
  final int courseIndex;
  const ModuleListBody({required this.quarterIndex, required this.courseIndex});

  @override
  _ModuleListBodyState createState() => _ModuleListBodyState();
}

class _ModuleListBodyState extends State<ModuleListBody> {
  List data = [];

  @override
  void initState() {
    super.initState();
    this.loadPdfLocations();
  }

  void loadPdfLocations() async {
    var jsonText = await rootBundle.loadString('assets/pdfFilenames.json');
    setState(() => data = json.decode(jsonText));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: GridView.builder(
        // ignore: unnecessary_null_comparison
        itemCount: data.length == 0 ||
                data[widget.quarterIndex][widget.courseIndex]["file"].length ==
                    0
            ? 0
            : data[widget.quarterIndex][widget.courseIndex]["file"].length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (BuildContext context, int index) {
          List file = data[widget.quarterIndex][widget.courseIndex]["file"];
          print(file);
          return Pdf(
              pdfFilename: file[index]["filename"],
              pdfColor: Color(0xff71777F));
        },
      ),
    );
  }
}
