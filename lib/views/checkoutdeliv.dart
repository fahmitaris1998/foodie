import 'package:flutter/material.dart';
import 'package:foodie/ui/color.dart';
import 'package:foodie/views/checkuotpayment.dart';


class CheckoutDeliv extends StatefulWidget {
  @override
  _CheckoutDelivState createState() => _CheckoutDelivState();
}

class _CheckoutDelivState extends State<CheckoutDeliv> {
  bool _isRadioSelected1 = true;
  bool _isRadioSelected2 = false;

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
                        Text("Delivery",style: TextStyle(fontSize: 34.0,fontWeight: FontWeight.w600),),
                        SizedBox(height: 45.0,),
                        Padding(
                          padding: const EdgeInsets.only(left: 3.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Address details",style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.w600),),
                              Text("change",style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.w400,color: colorchange),),

                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(top: 20.0),
                          padding: EdgeInsets.only(left: 30.0,top: 25,bottom: 25),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0)
                          ),
                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Fahmi Taris",style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.w500),),
                              SizedBox(height: 8.0,),
                              SizedBox(width: 232,height: .4,child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color: Colors.grey
                                ),
                              ),),
                              SizedBox(height: 8.0,),
                              Text("Km 5 refinery road oppsite re \npublic road, effurun, delta state",style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w400),),
                              SizedBox(height: 8.0,),
                              SizedBox(width: 232,height: .4,child: DecoratedBox(
                                decoration: BoxDecoration(
                                    color: Colors.grey
                                ),
                              ),),
                              SizedBox(height: 8.0,),
                              Text("+62 82216623xxx",style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w400),),
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
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context)=>CheckoutPayment()));
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
              padding: EdgeInsets.only(bottom: 25.0),

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
              padding: EdgeInsets.only(bottom: 25.0),

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
                  Text(label,style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.w400),)
                ],
              ),
            ),
          ],
        ),
    );
  }
}
