import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:module_app/screens/home/home.body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
      ),
      body: HomeBody(),
    );
  }
}
