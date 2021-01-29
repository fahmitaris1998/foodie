import 'package:flutter/material.dart';
import 'package:foodie/ui/color.dart';
import 'package:foodie/views/detailfood.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CardFood extends StatefulWidget {
  final String image;
  final String name;
  final String harga;
  final int idx;
  const CardFood({Key key, this.image, this.name, this.harga, this.idx}) : super(key: key);

  @override
  _CardFoodState createState() => _CardFoodState();
}

class _CardFoodState extends State<CardFood> {
  var sd;
  @override
  Future<void> initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailFood()));
      },
      child: Container(
        margin: EdgeInsets.only(left: widget.idx==0? 50: 34,bottom: 10.0,right:  widget.idx==1?20:0),
        width: 200.0,
        child: Stack(
          children: [
            Positioned.fill(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: EdgeInsets.only(top: 60.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.white,
                          boxShadow: [
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
                          SizedBox(height:115.0,),
                          Text( widget.name,style: TextStyle(fontSize: 22.0,color: Colors.black, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                          SizedBox(height: 15.0,),
                          Text( widget.harga, style: TextStyle(color: basecolor,fontSize: 17.0,fontWeight: FontWeight.bold),),

                        ],
                      ),
                    ),
                  ),)
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.topCenter,
                child:Container(
                  width: 160.0,
                  height: 160.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: ExactAssetImage( widget.image),
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
                )

              ),
            ),
          ],
        ),
      ),
    );
  }
}

