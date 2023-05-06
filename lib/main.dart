import 'package:fashion_design_app/components/cardwidget.dart';
import 'package:fashion_design_app/helpers/constants.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MainPage());
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Constants.mainAppBarColor,
          fontFamily: Constants.mainAppFont),
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Constants.lightColor,
          title: Text(
            Constants.mainAppTitle,
            style: TextStyle(
                color: Constants.mainColor,
                fontSize: 24,
                fontWeight: FontWeight.w600),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon:
                  Icon(size: 30, color: Constants.mainColor, Icons.camera_alt),
            )
          ],
        ),
        body: const CardWidget()
      ),
    );
  }
}
