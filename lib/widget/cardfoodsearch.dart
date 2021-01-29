import 'package:flutter/material.dart';
import 'package:foodie/ui/color.dart';
import 'package:foodie/views/detailfood.dart';

class CardFoodSearch extends StatelessWidget {
  final String image;
  final String name;
  final String harga;

  const CardFoodSearch({Key key, this.image, this.name, this.harga}) : super(key: key);
  @override
  Widget build(BuildContext context) {
     return GestureDetector(
       onTap: (){
         Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailFood()));
       },
       child: Container(
         margin: EdgeInsets.only(left: 0.0,bottom: 20.0),
         child: Stack(
           children: [
             Positioned.fill(
               child: Align(
                 alignment: Alignment.bottomCenter,
                 child: Container(
                   padding: EdgeInsets.only(top: 40),
                   child: Container(
                     width: double.infinity,
                     height: double.infinity,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(30.0),
                       color: Colors.white,boxShadow: [
                       BoxShadow(
                         color: Color.fromRGBO(0, 0, 0, 0.05),
                         spreadRadius: 2,
                         blurRadius:5,
                         offset: Offset(0, 6),
                       )
                     ]

                     ),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         SizedBox(height:107.0,),
                         Text(name,style: TextStyle(fontSize: 22.0,color: Colors.black, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                         SizedBox(height: 18.0,),
                         Text(harga, style: TextStyle(color: basecolor,fontSize: 17.0,fontWeight: FontWeight.bold),),
                       ],
                     ),
                   ),
                 ),
               ),
             ),
             Positioned.fill(
               child: Align(
                 alignment: Alignment.topCenter,
                 child: Container(
                   width: 128.0,
                   height: 128.0,
                   decoration: BoxDecoration(
                       image: DecorationImage(
                           image: ExactAssetImage(image),
                           fit: BoxFit.fill
                       ),
                       borderRadius: BorderRadius.circular(100.0),
                       boxShadow: [
                         BoxShadow(
                           color: Color.fromRGBO(0, 0, 0, 0.07),
                           spreadRadius: 1,
                           blurRadius:10,
                           offset: Offset(5, 10),
                         )
                       ]
                   ),
                 )),
             ),

           ],
         ),
       ),
     );
    // Container(
    //   margin: EdgeInsets.only(left: 0.0,bottom: 20.0),
    //
    //   decoration: BoxDecoration(
    //       borderRadius: BorderRadius.circular(20.0),
    //       color: Colors.white,
    //       boxShadow: [
    //         BoxShadow(
    //           color: Colors.grey.withOpacity(0.5),
    //           spreadRadius: .1,
    //           blurRadius:1,
    //           offset: Offset(0, 2),
    //         )
    //       ]
    //   ),
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.center,
    //     children: [
    //       SizedBox(height:18.0,),
    //       Text(name,style: TextStyle(fontSize: 22.0,color: Colors.black, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
    //       SizedBox(height: 18.0,),
    //       Text(harga, style: TextStyle(color: basecolor,fontSize: 17.0,fontWeight: FontWeight.bold),),
    //
    //     ],
    //   ),
    // );
  }
}
