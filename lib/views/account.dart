import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:foodie/ui/color.dart';
import 'package:foodie/ui/data.dart';
import 'package:foodie/widget/listaccount.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Colors.grey[100],
          width: double.infinity,
          padding: EdgeInsets.only(left: 41.0,right: 41.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 35.0,),
              SafeArea(child: Icon(Icons.arrow_back_ios,size: 24,)),
              SizedBox(height: 10.0,),
              Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 30.0,),
                        Text("My profile",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 34.0),),
                        SizedBox(height: 44.0,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Personal detail',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
                            Text('change',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15,color: buttonupdate),),
                          ],
                        ),
                        SizedBox(height: 11.0,),
                        Container(
                          padding: EdgeInsets.only(top: 18.0,bottom: 26.0,left: 16.0,right: 18.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Colors.white
                          ),

                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image(image: ExactAssetImage('assets/foto.png')),
                              SizedBox(width: 16.0,),
                              IntrinsicWidth(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text("Fahmi Taris",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18.0),),
                                    SizedBox(height: 5.0,),
                                    Text("fahmitaris6@gmail.com",maxLines: 2,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15.0,color: Colors.black.withOpacity(0.5)),),
                                    SizedBox(height: 7.0,),
                                    Padding(
                                      padding:EdgeInsets.symmetric(horizontal:0.0),
                                      child:Container(
                                        height:0.3,
                                        color:Colors.black.withOpacity(0.5),),),
                                    SizedBox(height: 7.0,),
                                    Text("+62 8221443352",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15.0,color: Colors.black.withOpacity(0.5)),),
                                    SizedBox(height: 7.0,),
                                    Padding(
                                      padding:EdgeInsets.symmetric(horizontal:0.0),
                                      child:Container(
                                        height:0.3,
                                        color:Colors.black.withOpacity(0.5),),),
                                    SizedBox(height: 7.0,),
                                    Text("No 15 uti street off \novie palace road \neffurun delta state",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15.0,color: Colors.black.withOpacity(0.5)),),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 2,),
                        ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              itemCount: menuakun.length,
                              itemBuilder:(context,index){
                                return ListAccount(menu: menuakun[index],);
                              }
                          ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30.0,),
              Container(
                margin: EdgeInsets.only(bottom: 41.0),
                padding: EdgeInsets.symmetric(vertical: 25.0),
                decoration: BoxDecoration(
                    color:buttonupdate,
                    borderRadius: BorderRadius.circular(30.0)
                ),
                width: double.infinity,
                child:Center(
                  child:
                  Text("Update",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w600)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
