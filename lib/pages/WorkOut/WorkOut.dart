import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:quiz/pages/WorkOut/widgets/AllType_item_widget.dart';
import 'package:quiz/pages/WorkOut/widgets/FullBody_item_widget.dart';
import 'package:quiz/pages/WorkOut/widgets/Lower_item_widget.dart';
import 'package:quiz/pages/WorkOut/widgets/upper_item_widget.dart';

class Workout extends StatelessWidget {
  const Workout({super.key});
  static const String routeName = "Workout";


  @override
  Widget build(BuildContext context) {
    var them = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(9.0),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,

        home: DefaultTabController(
          length: 4,
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar:
            AppBar(
              toolbarHeight: 290,
              elevation: 0,
              automaticallyImplyLeading: false,
              backgroundColor: Colors.white,
              flexibleSpace: SafeArea(
                child:
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(right:12),

                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal:10,vertical:10),
                        child:
                        Row(

                          children: [
                            CircleAvatar(
                                 maxRadius: 35,
                              minRadius: 35,
                              backgroundImage: AssetImage("assets/images/MyPersonalProfile.png", ),
                            ),
                            SizedBox(width: 12,),
                            Expanded(

                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:[
                                  Text("Hello, Jade",style:them.textTheme.titleMedium,),
                                  SizedBox(height: 6,),
                                  Text("Ready To WorkOut Today?",style:them.textTheme.titleLarge,),
                                ],
                              ),
                            ),
                            //  Badge(
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
                      ),
                    ),
                    SizedBox(height: 50,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.symmetric(horizontal: 15),
                          width: 350,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(15),
                            color: Colors.grey.shade100,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(9.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(Icons.heart_broken),
                                              Text("Heart Rate")
                                            ],
                                          ),
                                          Text("81BPM",style:them.textTheme.titleMedium,),

                                        ],
                                      ), SizedBox(width: 10,),
                                      Container(width:4,height:60,color: Colors.grey.shade200,),
                                    ],
                                  ),
                                ),

                                Expanded(
                                  child: Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,

                                        children: [
                                          Row(
                                            children: [
                                              Icon(Icons.list),
                                              Text("To Do")
                                            ],
                                          ),
                                          Text("23.5%",style:them.textTheme.titleMedium,)
                                        ],
                                      ),
                                      SizedBox(width: 25,),
                                      Container(width:4,height:60,color: Colors.grey.shade200,),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.local_fire_department_rounded),
                                          Text("Calo")
                                        ],
                                      ),
                                      Text("1000 Cal",style:them.textTheme.titleMedium,)
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.center,
                          //   children: [
                          //     ImageIcon(AssetImage("assets/images/bear.png"),
                          //       color: Colors.blueAccent.shade200,),
                          //     SizedBox(width: 10,),
                          //
                          //     Text("Beathing",style:them.textTheme.titleMedium),
                          //   ],
                          // ),

                        ),
                        SizedBox(height:30,),
                        Container(
                            padding:EdgeInsets.symmetric(horizontal: 10),
                            child: Text("WorkOut Programms",style: them.textTheme.titleLarge,))
                      ],),
                  ],
                ),

              ),
              bottom: const TabBar(
                tabs: [
                  Tab(icon: Text("All Type",style: TextStyle(color: Colors.grey),),),
                  Tab(icon: Text("Full Body",style: TextStyle(color: Colors.grey),),),
                  Tab(icon: Text("Upper",style: TextStyle(color: Colors.grey),),),
                  Tab(icon: Text("Lower",style: TextStyle(color: Colors.grey),),),

                ],
              ),
            ),
            body:const TabBarView(
              children: [
                AllTypeItemWidget(),
                FullBodyItemWidget(),
                UpperItemWidget(),
                LowerItemWidget()
                // Icon(Icons.directions_car),
                // Icon(Icons.directions_transit),
                // Icon(Icons.directions_bike),
                // Icon(Icons.directions_bike),
              ],
            ),
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Container(
//               alignment: Alignment.center,
//               margin: EdgeInsets.symmetric(horizontal: 15),
//               width: 350,
//               height: 80,
//               decoration: BoxDecoration(
//                 borderRadius:BorderRadius.circular(15),
//                 color: Colors.grey.shade100,
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(9.0),
//                 child: Row(
// mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Expanded(
//                       child: Row(
//                         children: [
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Row(
//                                 children: [
//                                   Icon(Icons.heart_broken),
//                                   Text("Heart Rate")
//                                 ],
//                               ),
//                               Text("81BPM",style:them.textTheme.titleMedium,),
//
//                             ],
//                           ), SizedBox(width: 10,),
//                           Container(width:4,height:60,color: Colors.grey.shade200,),
//                         ],
//                       ),
//                     ),
//
//                     Expanded(
//                       child: Row(
//                         children: [
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//
//                             children: [
//                               Row(
//                                 children: [
//                                   Icon(Icons.list),
//                                   Text("To Do")
//                                 ],
//                               ),
//                               Text("23.5%",style:them.textTheme.titleMedium,)
//                             ],
//                           ),
//                           SizedBox(width: 25,),
//                           Container(width:4,height:60,color: Colors.grey.shade200,),
//                         ],
//                       ),
//                     ),
//                     Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Row(
//                             children: [
//                               Icon(Icons.local_fire_department_rounded),
//                               Text("Calo")
//                             ],
//                           ),
//                           Text("1000 Cal",style:them.textTheme.titleMedium,)
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               // Row(
//               //   mainAxisAlignment: MainAxisAlignment.center,
//               //   children: [
//               //     ImageIcon(AssetImage("assets/images/bear.png"),
//               //       color: Colors.blueAccent.shade200,),
//               //     SizedBox(width: 10,),
//               //
//               //     Text("Beathing",style:them.textTheme.titleMedium),
//               //   ],
//               // ),
//
//             ),
//             SizedBox(height:30,),
//             Container(
//                 padding:EdgeInsets.symmetric(horizontal: 10),
//                 child: Text("WorkOut Programms",style: them.textTheme.titleLarge,))
//         ],),

          ),
        ),
      ),
    );

  }
}
