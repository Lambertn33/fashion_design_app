import 'package:fashion_design_app/helpers/constants.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Constants.mainAppBarColor,
          fontFamily: Constants.mainAppFont),
      home: Scaffold(
          appBar: AppBar(
        backgroundColor: Constants.lightColor,
        title: Text(
          Constants.mainAppTitle,
          style: TextStyle(color: Constants.mainColor),
        ),
        actions: [
          Icon(Icons.camera_enhance, size: 30, color: Constants.mainColor,)
        ],
      )),
    );
  }
}
