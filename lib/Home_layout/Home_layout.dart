import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz/pages/WorkOut/WorkOut.dart';
import 'package:quiz/pages/Home/home.dart';
import 'package:quiz/pages/Insights/insights.dart';

class HomeLayoutView extends StatefulWidget {
  const HomeLayoutView({super.key});
  static const String routeName = "HomeLayoutView";

  @override
  State<HomeLayoutView> createState() => _HomeLayoutViewState();
}

class _HomeLayoutViewState extends State<HomeLayoutView> {
  int selectedIndex = 0;

  List<Widget> Screens = [
    Home(),
    Insights(),
    Workout()

  ];

  @override
  Widget build(BuildContext context) {

    return
      Container(
        child: Scaffold(
        body:Screens[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) {
            setState(() {
              selectedIndex = index;
            });
          },
          currentIndex: selectedIndex,
          selectedItemColor: Colors.purpleAccent,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home,), label: "Home"),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/Icon.png",)),label: "insights"),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/user-icon.png",),),label: "person"),


    ],
        ),
        ),
      );

  }
}
