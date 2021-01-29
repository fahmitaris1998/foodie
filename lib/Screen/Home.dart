import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodie/ui/color.dart';
import 'package:foodie/ui/data.dart';
import 'package:foodie/views/cart.dart';
import 'package:foodie/views/search.dart';
import 'package:foodie/widget/cardfood.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../main.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 50.0,),
          SafeArea(
            child: Container(
              padding: EdgeInsets.only(left: 54.0,right: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap:(){
                        print("bisa nii");
                        },
                      child: Image(image: ExactAssetImage("assets/vector.png"))),
                  GestureDetector(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>Cart()));
                      },
                      child: Image(image: ExactAssetImage("assets/shopping.png"))),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 44.0),
            padding: EdgeInsets.only(left: 50),
            child:
            GestureDetector(
                onTap: ()async{
                },
                child: Text("Delicious \nfood for you",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black,fontSize: 34.0),)),
          ),
          SizedBox(height: 49.0,),
          Container(
            margin: EdgeInsets.only(left: 85.0,right: 40.0),
            decoration: BoxDecoration(
                color: Colors.grey[100],
              borderRadius: BorderRadius.circular(30.0)
            ),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (context)=>Search()
                ));
              },
              child: Row(
                children: [
                  Icon(Icons.search_sharp,size: 25,),
                  SizedBox(width: 16,),
                  Text("Search",style: TextStyle(fontSize: 17.0),)
                ],
              ),
            ),
          ),
          SizedBox(height: 0.0,),
          Expanded(
            child: DefaultTabController(
                length: 5,
                child: Scaffold(
                  appBar: AppBar(
                    backgroundColor: Colors.grey[100],
                    leading:SizedBox(width: 80,),
                    elevation: 0,
                    title: TabBar(
                      physics: BouncingScrollPhysics(),
                      isScrollable: true,
                      indicatorColor: basecolor,
                      labelColor: basecolor,
                      unselectedLabelColor: coloritembotnav,
                      labelStyle: TextStyle(
                          fontSize: 17.0
                      ) ,
                      tabs: [
                        Tab(text: "Foods"),
                        Tab(text: "Drinks"),
                        Tab(text: "Snacks"),
                        Tab(text: "Sauce"),
                        Tab(text: "Dessert"),
                      ],

                    ),
                  ) ,
                  body: TabBarView(
                    physics: BouncingScrollPhysics(),
                    children: [
                      Container(
                          color: Colors.grey[100],
                          child: Column(
                            children: [
                              Align(
                                  alignment: Alignment.topRight,
                                  child:
                                  Container(
                                    margin: EdgeInsets.only(right: 41.0,top: 45.0),
                                    child: Text("see more",
                                      style: TextStyle(fontSize: 15,color: basecolor),),
                                  )
                              ),
                              Expanded(
                                  child: Container(
                                      padding: EdgeInsets.only(top: 1),
                                      child: Foods()
                                  )
                              ),

                            ],
                          )
                      ),
                      Container(child: Center(child: Text("Drinks")),),
                      Container(child: Center(child: Text("Snacks")),),
                      Container(child: Center(child: Text("Sauce")),),
                      Container(child: Center(child: Text("Dessert")),),
                    ],
                  ),
                )
            ),
          )
        ],
      ),
    );
  }
}



class Foods extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index){
          return CardFood(image: items[index]["image"],name: items[index]["name"],harga: items[index]["harga"],idx: index,);
        }
    );
  }
}
