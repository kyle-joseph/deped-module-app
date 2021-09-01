import 'package:flutter/material.dart';
import 'package:module_app/screens/module_list/moduleList.body.dart';

class ModuleListScreen extends StatelessWidget {
  final String appbarTitle;
  final int quarterIndex;
  final int courseIndex;
  const ModuleListScreen(
      {required this.appbarTitle,
      required this.quarterIndex,
      required this.courseIndex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          appbarTitle,
          style: TextStyle(fontFamily: 'Arial', fontWeight: FontWeight.w700),
        ),
      ),
      body:
          ModuleListBody(quarterIndex: quarterIndex, courseIndex: courseIndex),
    );
  }
}
