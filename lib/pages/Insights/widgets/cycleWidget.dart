import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CycleWidget extends StatelessWidget {
  const CycleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var them = Theme.of(context);
    return

      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          image: DecorationImage(
            image:AssetImage("assets/images/cycle.png"),

          ),
        ),


      );
  }
}
