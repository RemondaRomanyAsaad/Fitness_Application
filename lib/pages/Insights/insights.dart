import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/pages/Insights/widgets/cycleWidget.dart';

class Insights extends StatelessWidget {
  const Insights({super.key});
  static const String routeName = "Home";


  @override
  Widget build(BuildContext context) {
    var them = Theme.of(context);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 150,
        backgroundColor: Colors.white,
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 ImageIcon(AssetImage("assets/images/Frame.png",),
                   color: Colors.purpleAccent.shade100,),
                SizedBox(width: 10,),
                Text("AliceCare",style:them.textTheme.titleLarge,)
              ],
            ),
        SizedBox(height: 20,),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            prefixIcon: Icon(Icons.search),
            hintText: 'Articles,Videos,Audio and More,....',
          ),
        ),

      ],
        ),

      ),
      body:  Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          padding: EdgeInsets.all(10),

      child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Chip(
                      elevation: 20,
                      padding: EdgeInsets.all(8),
                      backgroundColor: Colors.purpleAccent[100],
                      shadowColor: Colors.black,
                      //CircleAvatar
                      label: Text(
                        "Discover",
                        style: TextStyle(fontSize: 20),
                      ), //Text
                    ),
                  ),
                  Expanded(
                    child: Chip(
                      elevation: 20,
                      padding: EdgeInsets.all(8),
                      backgroundColor: Colors.grey[100],
                      shadowColor: Colors.black,
                      //CircleAvatar
                      label: Text(
                        "News",
                        style: TextStyle(fontSize: 20),
                      ), //Text
                    ),
                  ),
                  Expanded(
                    child: Chip(
                      elevation: 20,
                      padding: EdgeInsets.all(8),
                      backgroundColor: Colors.grey[100],
                      shadowColor: Colors.black,
                      //CircleAvatar
                      label: Text(
                        "Most Viewed",
                        style: TextStyle(fontSize: 20),
                      ), //Text
                    ),
                  ),
                ]
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Hot Topics",style:them.textTheme.titleLarge,),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Text("See More ",style:TextStyle(color:Colors.purpleAccent)),
                        Icon(Icons.navigate_next,size: 20,color: Colors.purpleAccent,),
                      ],
                    ),
                  ),


                ],
              ),
              SizedBox(height: 30,),

              Container(
                height: 200,
                child: ListView(

                  children: [
                    CarouselSlider(
                      items:[
                       CycleWidget(),
                        CycleWidget(),
                        CycleWidget(),
                        CycleWidget(),
                        CycleWidget(),

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
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Hot Topics",style:them.textTheme.titleLarge,),



                  ],
                ),
              ),
              Container(
                // margin: EdgeInsets.all(4),
                padding:EdgeInsets.all(8),
                width: 400,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(15),
                  color: Colors.grey.shade100 ,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                 Image(image: AssetImage("assets/images/DR.png")),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Connect with Doctor&",style:them.textTheme.titleLarge,),
                        Text("get Suggetions",style:them.textTheme.titleLarge,),
                        SizedBox(height: 2,),

                        Text("Connect now and get ",style:them.textTheme.titleMedium,),
                        Text("expert inisghts",style:them.textTheme.titleMedium,),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.purpleAccent
                          ),
                          onPressed: () {},
                          child: const Text('View Detials'),
                        ),
                      ],
                    ),

                  ],
                    ),

                ),


              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Hot Topics",style:them.textTheme.titleLarge,),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          Text("See More ",style:TextStyle(color:Colors.purpleAccent)),
                          Icon(Icons.navigate_next,size: 20,color: Colors.purpleAccent,),
                        ],
                      ),
                    ),


                  ],
                ),
              ),
            ],
          ),
        ),


      ),

    );
  }
}
