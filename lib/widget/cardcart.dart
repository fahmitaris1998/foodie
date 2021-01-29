import 'package:flutter/material.dart';
import 'package:foodie/ui/color.dart';

class CardCart extends StatefulWidget {
  final String image;
  final String name;
  final String harga;

  const CardCart({Key key, this.image, this.name, this.harga}) : super(key: key);
  @override
  _CardCartState createState() => _CardCartState();
}

class _CardCartState extends State<CardCart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0)
      ),
      padding: EdgeInsets.only(top: 12.0,bottom: 12.0,left: 17.0,right: 24.0),
      margin: EdgeInsets.only(bottom: 14.0),
      child:Stack(
        children:[
          Row(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(40.0),
                child: Image(image: ExactAssetImage(widget.image),height: 70.0,width: 70.0,)),
            SizedBox(width: 16.0,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.name,style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.w600),),
                SizedBox(height: 11.0,),
                Text(widget.harga,style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.w600,color: basecolor),),
              ],
            )
          ],
          ),
          Positioned(
            bottom: 0,
              right: 0,
              child:Container(
                height: 20.0,
                width: 52.0,
                decoration: BoxDecoration(
                  color: buttonupdate,
                  borderRadius: BorderRadius.circular(20.0)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("-",style: TextStyle(color: Colors.white,fontSize: 12.0,fontWeight: FontWeight.w600),),
                    Text("1",style: TextStyle(color: Colors.white,fontSize: 13.0,fontWeight: FontWeight.w600),),
                    Text("+",style: TextStyle(color: Colors.white,fontSize: 12.0,fontWeight: FontWeight.w600),),
                  ],
                ),
              )
          )
        ]
      ),
    );
  }
}
