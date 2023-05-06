import 'package:fashion_design_app/components/card/cardwidget.dart';
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

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    tabController.dispose();
  }

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
        body: const CardWidget(),
        bottomNavigationBar: Material(
          child: TabBar(controller: tabController, tabs: [
            Tab(
              icon: Icon(
                Icons.home,
                size: 30,
                color: Constants.mainColor.withOpacity(0.6),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.more,
                size: 30,
                color: Constants.mainColor.withOpacity(0.6),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.play_arrow,
                size: 30,
                color: Constants.mainColor.withOpacity(0.6),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.navigation,
                size: 30,
                color: Constants.mainColor.withOpacity(0.6),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
