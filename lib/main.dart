import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz/Home_layout/Home_layout.dart';
import 'package:quiz/core/Provider/app_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     initialRoute:HomeLayoutView.routeName,
      routes: {
        HomeLayoutView.routeName:(context) => HomeLayoutView()
      },
    );
  }
}
