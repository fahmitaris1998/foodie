import 'package:flutter/material.dart';
import 'package:foodie/ui/data.dart';
import 'package:foodie/widget/cardfood.dart';
import 'package:foodie/widget/cardfoodsearch.dart';


class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Colors.grey[100],
          child: Column(
            children: [
              SafeArea(
                child: Container(
                  margin: EdgeInsets.only(top: 35.0,left: 42.0),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                          child: Icon(Icons.arrow_back_ios_rounded,size: 20,)),
                      SizedBox(width: 20,),
                      Text("Spicy chieckns",style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.w600,color: Colors.black),)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.0,),
              Expanded(
                child: Container(
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        SizedBox(height: 52.0,),
                        Text('Found 6 results',style: TextStyle(fontSize: 28.0,fontWeight: FontWeight.w700),),
                        SizedBox(height: 45.0,),
                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: GridView.count(
                              //physics: BouncingScrollPhysics(),
                              physics: new NeverScrollableScrollPhysics(),
                              crossAxisCount: 2,
                              childAspectRatio: 0.6,
                              crossAxisSpacing: 20,
                              controller: new ScrollController(keepScrollOffset: false),
                              shrinkWrap: true,

                              children: List.generate(itemssearch.length, (index) {
                                return CardFoodSearch(
                                  image: itemssearch[index]["image"],
                                  name: itemssearch[index]["name"],
                                  harga: itemssearch[index]["harga"],
                                );
                              }),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
