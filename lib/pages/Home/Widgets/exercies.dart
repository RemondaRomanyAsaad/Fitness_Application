import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExerciesItemWidget extends StatefulWidget {
  // Colors? BackGroundColor;
  // ImageIcon?Image;
  // String Text;

  ExerciesItemWidget({
    // this.BackGroundColor,required this.Text, this.Image
   Super});

  @override
  State<ExerciesItemWidget> createState() => _ExerciesItemWidgetState();
}

class _ExerciesItemWidgetState extends State<ExerciesItemWidget> {
  @override
  Widget build(BuildContext context) {
    var them = Theme.of(context);

    return  Expanded(
      child: Container(
        child: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Container(
                    // margin: EdgeInsets.all(4),
                    padding:EdgeInsets.all(8),
                    width: 150,
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(15),
                      color: Colors.purpleAccent.shade100 ,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ImageIcon(AssetImage("assets/images/Relaxition.png"),
                        color: Colors.purpleAccent,),
                      SizedBox(width: 10,),
                      Text("Relaxition",style:them.textTheme.titleMedium,),
                      ],
                    ),

                  ),

                  Container(
                    // margin: EdgeInsets.all(4),
                    padding:EdgeInsets.all(8),
                    width: 150,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(15),
                      color: Colors.pinkAccent.shade100 ,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ImageIcon(AssetImage("assets/images/Meditation.png"),
                          color: Colors.pinkAccent,),
                        SizedBox(width: 10,),

                        Text("Meditation",style:them.textTheme.titleMedium),
                      ],
                    ),

                  ),

                ],
              ),
            ),
            SizedBox(height: 10,),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Container(
                    // margin: EdgeInsets.all(4),
                    padding:EdgeInsets.all(8),
                    width: 150,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(15),
                      color: Colors.orangeAccent.shade100 ,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ImageIcon(AssetImage("assets/images/bear.png"),
                          color: Colors.orangeAccent,),
                        SizedBox(width: 10,),

                        Text("Beathing",style:them.textTheme.titleMedium),
                      ],
                    ),

                  ),
                  Container(
                    // margin: EdgeInsets.all(4),
                    padding:EdgeInsets.all(8),
                    width: 150,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(15),
                      color: Colors.blueAccent.shade100
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ImageIcon(AssetImage("assets/images/yoga.png"),
                          color: Colors.blueAccent,),
                        SizedBox(width: 10,),

                        Text("Yoga",style:them.textTheme.titleMedium),
                      ],
                    ),

                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
