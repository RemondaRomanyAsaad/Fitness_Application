import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:quiz/pages/Home/Widgets/exercies.dart';
import 'package:quiz/pages/Home/Widgets/feature.dart';
class Home extends StatelessWidget {
  const Home({super.key});
  static const String routeName = "Home";


  @override
  Widget build(BuildContext context) {
    var them = Theme.of(context);
    return Container(
      child: Padding(

        padding: const EdgeInsets.all(50),
        child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Image.asset("assets/images/Moody.png"),
               // Badge(
               //   elevation: 0,
               //   shape: BadgeShape.circle,
               //   padding: EdgeInsets.all(7),
               //   badgeContent: Text(
               //     "2",
               //     style: TextStyle(color: Colors.white),
               //   ),
               // ),

             ],
           ),
          SizedBox(height: 20,),
          Row(
            children: [
              Text("Hello,",style: them.textTheme.titleMedium,),
              Text("  RemondaRomany",style:them.textTheme.titleLarge,),
            ],
          ),
          SizedBox(height: 20,),

          Text("How Are You Feeling Today?,",style: them.textTheme.titleMedium,),
          SizedBox(height: 30,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey,

                    child:
                    Icon(Icons.emoji_emotions,size: 20,color: Colors.red,),

                  ),
                  SizedBox(height: 10,),

                  Text("Love")
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey,

                    child: Icon(Icons.emoji_emotions,size: 20,color: Colors.blueGrey,),
                  ),
                  SizedBox(height: 10,),
                  Text("Cool")
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey,

                    child: Icon(Icons.emoji_emotions,size: 20,color: Colors.blueGrey,),
                  ),
                  SizedBox(height: 10,),
                  Text("Happy")
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey,

                    child: Icon(Icons.emoji_emotions,size: 20,color: Colors.blueGrey,),
                  ),
                  SizedBox(height: 10,),
                  Text("Sad")
                ],
              ),

            ],
          ),
          SizedBox(height: 40,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Feature",style:them.textTheme.titleLarge,),
                 Row(
                   children: [
                     Text("See More ",style:TextStyle(color:Colors.green)),
                     Icon(Icons.navigate_next,size: 20,color: Colors.green,),
                   ],
                 ),
              

            ],
          ),

          Container(
          height: 200,
          child: ListView(

              children: [
          CarouselSlider(
          items:[
            SliderItemWidget(),
            SliderItemWidget(),
            SliderItemWidget(),
            SliderItemWidget(),

          ],
    options: CarouselOptions(
    height: 190.0,
    enlargeCenterPage: true,
    autoPlay: true,
    autoPlayCurve: Curves.fastOutSlowIn,
    enableInfiniteScroll: true,
    autoPlayAnimationDuration: Duration(milliseconds: 800),
    viewportFraction: 0.8,
    ),
    ),
    ],
    ),
        ),
SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Exercies",style:them.textTheme.titleLarge,),
              Row(
                children: [
                  Text("See More ",style:TextStyle(color:Colors.green)),
                  Icon(Icons.navigate_next,size: 20,color: Colors.green,),
                ],
              ),


            ],
          ),
          SizedBox(height: 40,),

          ExerciesItemWidget(),


        ]),),);
  }
}
