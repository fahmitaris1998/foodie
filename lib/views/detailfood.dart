import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:foodie/ui/color.dart';
import 'package:foodie/ui/data.dart';

class DetailFood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:   Container(
          color: Colors.grey[100],
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 35.0,left: 41,right: 41,bottom: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                          onTap:(){
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.arrow_back_ios_rounded,size: 20,)),
                      Icon(Icons.favorite_border,size: 25,),
                    ],
                  ),
                ),
                Expanded(
                    child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                      child: Column(
                        children: [
                          Container(
                            height: 304.0,
                            width: double.infinity,
                            child: Swiper(
                              itemCount: imageswiper.length,
                              itemBuilder: (context,index){
                                return Container(
                                  padding: EdgeInsets.only(bottom: 63.0),
                                  child: Center(
                                    child: Container(
                                        width: 241.0,height: 241.0,
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.circular(120.0),
                                          image: DecorationImage(
                                            image: ExactAssetImage(imageswiper[index]), fit: BoxFit.fill),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color.fromRGBO(0, 0, 0, 0.05),
                                                spreadRadius: 1,
                                                blurRadius:10,
                                                offset: Offset(5, 20),
                                              )
                                            ]
                                        )
                                        ),
                                    ),
                                );
                              },
                              pagination: new SwiperPagination(
                                alignment: Alignment.bottomCenter,
                                builder: new DotSwiperPaginationBuilder(
                                    color: colordot,
                                    activeColor: basecolor,
                                    size: 8.0,
                                    activeSize: 8.0,
                                    space: 5
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 30.0,),
                          Text("Veggie Tomato mix",style: TextStyle(fontSize: 28.0,fontWeight: FontWeight.w600),),
                          SizedBox(height: 13.0,),
                          Text("N1,900",style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.w700,color: basecolor),),
                          Container(
                            width: double.infinity,
                            margin: EdgeInsets.only(left: 53.0,top: 43.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Delivery info",style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.w600,color: Colors.black),),
                                SizedBox(height: 7.0,),
                                Container(
                                  width: 297.0,
                                    child: Text("Delivered between monday aug and thursday 20 from 8pm to 91:32 pm",style: TextStyle(fontSize: 15.0,color: Colors.grey,fontWeight: FontWeight.w400),)),
                                SizedBox(height: 43.0,),
                                Text("Delivery info",style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.w600,color: Colors.black),),
                                SizedBox(height: 7.0,),
                                Container(
                                    width: 290.0,
                                    child: Text("All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.",style: TextStyle(fontSize: 15.0,color: Colors.grey,fontWeight: FontWeight.w400),))

                              ],
                            ),
                          )
                        ],

                      )
                    )
                ),
                Container(
                  margin: EdgeInsets.only(left: 50,right: 50,top: 36.0,bottom: 41.0),
                  padding: EdgeInsets.symmetric(vertical: 25.0),
                  decoration: BoxDecoration(
                      color:buttonupdate,
                      borderRadius: BorderRadius.circular(30.0)
                  ),
                  child:Center(
                    child:
                    Text("Add to card",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w600)),
                  ),
                ),
                ],
            ),
          ),
        ),
      ),
    );
  }
}
