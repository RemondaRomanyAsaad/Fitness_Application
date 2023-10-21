import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderItemWidget extends StatelessWidget {
  const SliderItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var them = Theme.of(context);
    return

      Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
              image:AssetImage("assets/images/Item.png"),

            ),
          ),


    );
  }
}
