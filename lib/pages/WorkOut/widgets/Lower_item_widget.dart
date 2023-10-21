import 'package:flutter/material.dart';
import 'package:quiz/pages/WorkOut/widgets/AllType_item_view.dart';
import 'package:quiz/pages/WorkOut/widgets/Lower_item_view.dart';

class LowerItemWidget extends StatelessWidget {
  const LowerItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var them = Theme.of(context);
    return Container(
      padding: EdgeInsets.all(10),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
         LowerItemView(),
          LowerItemView(),
          LowerItemView(),
          LowerItemView(),
          LowerItemView(),
          LowerItemView(),
          LowerItemView(),
          LowerItemView(),
          LowerItemView(),
          LowerItemView(),






        ],
      ),
    );
  }
}