import 'package:flutter/material.dart';
import 'package:foodie/ui/color.dart';
import 'package:foodie/ui/data.dart';

import 'dashboard.dart';


class CheckoutPayment extends StatefulWidget {
  @override
  _CheckoutPaymentState createState() => _CheckoutPaymentState();
}

class _CheckoutPaymentState extends State<CheckoutPayment> {
  bool _isRadioSelected1 = true;
  bool _isRadioSelected2 = false;
  bool _isRadioSelected3 = true;
  bool _isRadioSelected4 = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Colors.grey[100],
          child: Column(
            children: [
              SafeArea(
                  child:Padding(
                    padding: const EdgeInsets.only(top:35.0),
                    child: Stack(
                      children: [
                        Container(
                            width:double.infinity,
                            child: Text("Checkout",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),textAlign: TextAlign.center,)),
                        new Positioned(
                            left: 41.0,
                            child: Icon(Icons.arrow_back_ios_rounded,size: 20,)),
                      ],
                    ),
                  )
              ),
              SizedBox(height: 20.0,),
              Expanded(
                  child:
                  SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Container(
                        padding: EdgeInsets.only(left: 50.0,right: 50.0),
                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 22.0,),
                            Text("Payment",style: TextStyle(fontSize: 34.0,fontWeight: FontWeight.w600),),
                            SizedBox(height: 45.0,),
                            Padding(
                              padding: const EdgeInsets.only(left: 3.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Payment method",style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.w600),),
                                ],
                              ),
                            ),
                            Container(
                                width: double.infinity,
                                margin: EdgeInsets.only(top: 20.0,bottom: 0.0),
                                padding: EdgeInsets.only(top: 25,left: 15.0),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20.0)
                                ),
                                child:Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    LabeledRadio(
                                      label: payment[0]['name'],
                                      value: true,
                                      groupValue: _isRadioSelected3,
                                      onChanged: (bool newValue) {
                                        setState(() {
                                          _isRadioSelected3 = newValue;
                                          _isRadioSelected4 = false;
                                        });
                                      },
                                      color: payment[0]['color'],
                                      image: payment[0]['image'],
                                      indx: 0,
                                    ),
                                    SizedBox(height: 10.0,),
                                    LabeledRadio(
                                      label: payment[1]['name'],
                                      value: true,
                                      groupValue: _isRadioSelected4,
                                      onChanged: (bool newValue) {
                                        setState(() {
                                          _isRadioSelected3 = false;
                                          _isRadioSelected4 = newValue;
                                        });
                                      },
                                      color: payment[1]['color'],
                                      image: payment[1]['image'],
                                      indx: 1,
                                    ),

                                  ],
                                )
                            ),
                            SizedBox(height: 30.0,),
                            Text("Delivery method.",style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.w600),),
                            Container(
                                width: double.infinity,
                                margin: EdgeInsets.only(top: 20.0,bottom: 20.0),
                                padding: EdgeInsets.only(top: 25,left: 15.0),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20.0)
                                ),
                                child:Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    LabeledRadio(
                                      label: "Door delivery",
                                      value: true,
                                      groupValue: _isRadioSelected1,
                                      onChanged: (bool newValue) {
                                        setState(() {
                                          _isRadioSelected1 = newValue;
                                          _isRadioSelected2 = false;
                                        });
                                      },
                                      indx: 0,
                                    ),
                                    LabeledRadio(
                                      label: "Pick up",
                                      value: true,
                                      groupValue: _isRadioSelected2,
                                      onChanged: (bool newValue) {
                                        setState(() {
                                          _isRadioSelected1 = false;
                                          _isRadioSelected2 = newValue;
                                        });
                                      },
                                      indx: 1,
                                    ),

                                  ],
                                )
                            ),

                          ],
                        )

                    ),
                  )
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50.0,right: 50.0,top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total",style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.w400),),
                    Text("23,000",style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.w600),),
                  ],
                ),
              ),
              SizedBox(height: 30.0,),
              GestureDetector(
                onTap: (){
                  alert(context);
                },
                child: Container(
                  margin: EdgeInsets.only(left: 50,right: 50,bottom: 41.0),
                  padding: EdgeInsets.symmetric(vertical: 25.0),
                  decoration: BoxDecoration(
                      color:buttonupdate,
                      borderRadius: BorderRadius.circular(30.0)
                  ),
                  child:Center(
                    child:
                    Text("Process to payment",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w600)),
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

class LabeledRadio extends StatelessWidget {
  const LabeledRadio({
    this.label,
    this.padding,
    this.groupValue,
    this.value,
    this.onChanged,
    this.color,
    this.image,
    this.indx,

  });

  final String label;
  final EdgeInsets padding;
  final bool groupValue;
  final bool value;
  final Function onChanged;
  final Color color;
  final String image;
  final int indx;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (value != groupValue) onChanged(value);
      },
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(bottom: image == null ? 25.0:15.0),

            child: Radio<bool>(
              groupValue: groupValue,
              value: value,
              activeColor: basecolor,
              onChanged: (bool newValue) {
                onChanged(newValue);
              },
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: image == null ? 25.0:15.0),
            width: 200.0,
            decoration: BoxDecoration(
                border: indx != 1 ? Border(
                    bottom: BorderSide(
                        color: colordot,
                        width: .5
                    )
                ): null
            ),
            child: Row(
              children: [
                image!= null ? Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child:
                  Image(image: ExactAssetImage(image),),
                ): Container(),
                image != null ? SizedBox(width: 11.0,) : SizedBox(),
                Text(label,style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.w400),)
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void alert(context){
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            backgroundColor: Colors.transparent,
            contentPadding: EdgeInsets.all(0.0),
            scrollable: true,
            content: Container(
              padding: EdgeInsets.only(bottom: 17.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.0)
              ),
              child: Column(
                children: [
                  Container(
                    width:double.infinity,
                    padding: EdgeInsets.only(bottom: 19.0,top: 17.0,left: 46.0),
                    decoration: BoxDecoration(
                      color: colorsborderside2,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.circular(30.0)),
                      // border: Border(
                      //   bottom: BorderSide(
                      //       width: 0,
                      //       color: colorsborderside
                      //   )
                      // )
                    ),
                    child: Text("Please Note",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)
                    ,
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 18.0,horizontal: 41.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('DELIVERY TO MAINLAND',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w400,color: Colors.black.withOpacity(0.5)),),
                        Text('N100 - N2000',style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.w400,color: Colors.black),),
                        SizedBox(height: 7.0,),
                        Divider(
                          color: Colors.black.withOpacity(0.5),
                        ),
                        SizedBox(height: 7.0,),
                        Text('DELIVERY TO ISLAND',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w400,color: Colors.black.withOpacity(0.5)),),
                        Text('N2000 - N3000',style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.w400,color: Colors.black),),
                        SizedBox(height: 34.0,),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 46.0,right:18.0 ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                            onTap:(){
                              Navigator.pop(context);
                            },
                            child: Text("Cancel",style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.w600,color: Colors.black.withOpacity(0.5)),)),
                        GestureDetector(
                          onTap: (){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Dashboard()));
                          },
                          child: Container(
                              padding: EdgeInsets.symmetric(vertical: 17.0,horizontal: 43.0),
                              decoration: BoxDecoration(
                                  color: buttonupdate,
                                  borderRadius:BorderRadius.circular(30.0)
                              ),
                              child: Text("Process",style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.w600,color: Colors.white))),
                        )
                      ],
                    ),
                  )

                ],
              ),
            )
        );
      });
}