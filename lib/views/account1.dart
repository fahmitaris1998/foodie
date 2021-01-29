import 'package:flutter/material.dart';
import 'package:foodie/ui/color.dart';
import 'package:foodie/ui/data.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  bool _isRadioSelected1 = false;
  bool _isRadioSelected2 = false;
  bool _isRadioSelected3 = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 35.0),
                  child: Row(
                    children: [
                      SizedBox(width: 41.0,),
                      Icon(Icons.arrow_back_ios_rounded,size: 20,),
                      SizedBox(width: 96.0,),
                      Text("My Profile",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),)
                    ],
                  ),
                ),
                SizedBox(height: 54.0 ,),
                Padding(
                  padding: const EdgeInsets.only(left: 53.0),
                  child: Text('Information',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600),),
                ),
                SizedBox(height: 32.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(image: ExactAssetImage("assets/foto.png"),height: 60.0,width: 60.0,),
                    SizedBox(width: 15.0,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Fahmi Taris",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18.0,color: Colors.black),),
                        SizedBox(height: 9,),
                        Text("fahmitaris21@gmail.com",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 13.0,color: Colors.grey)),
                        SizedBox(height: 9,),
                        Text("No 15 uti street off ovie palace \nroad effurun delta state",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 13.0,color: Colors.grey))
                      ],
                    ),
                    Image(image: ExactAssetImage("assets/edit.png"),width: 17.0,height: 17.0,)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 74.0,left: 53.0),
                  child: Text("Payment Method",style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.w600),),
                ),
                Container(
                  padding: EdgeInsets.only(left: 51.0,top: 41.0),
                  child:
                  Theme(
                    data: Theme.of(context).copyWith(
                      indicatorColor: basecolor
                    ),
                    child: Column(
                      children: [
                      LabeledRadio(
                        label: payment[0]['name'].toString(),
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        value: true,
                        groupValue: _isRadioSelected1,
                        onChanged: (bool newValue) {
                          setState(() {
                            _isRadioSelected1 = newValue;
                            _isRadioSelected2 = false;
                            _isRadioSelected3 = false;
                          });
                        },
                        color: payment[0]['color'],
                        image: payment[0]['image'],
                        indx: 0,
                      ),
                      LabeledRadio(
                        label: payment[1]['name'].toString(),
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        value: true,
                        groupValue: _isRadioSelected2,
                        onChanged: (bool newValue) {
                          setState(() {
                            _isRadioSelected2 = newValue;
                            _isRadioSelected3 = false;
                            _isRadioSelected1 = false;
                          });
                        },
                        color: payment[1]['color'],
                        image: payment[1]['image'],
                        indx: 1,
                      ),
                      LabeledRadio(
                        label: payment[2]['name'].toString(),
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        value: true,
                        groupValue: _isRadioSelected3,
                        onChanged: (bool newValue) {
                          setState(() {
                            _isRadioSelected3 = newValue;
                            _isRadioSelected1 = false;
                            _isRadioSelected2 = false;
                          });
                        },
                        color: payment[2]['color'],
                        image: payment[2]['image'],
                        indx: 2,
                      ),

                      ],

                    ),
                  )
                ),
                Container(
                  margin: EdgeInsets.only(left: 50,right: 50,top: 80.0),
                  padding: EdgeInsets.symmetric(vertical: 25.0),
                  decoration: BoxDecoration(
                    color:buttonupdate,
                    borderRadius: BorderRadius.circular(30.0)
                  ),
                  child:Center(
                    child:
                    Text("Update",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w600)),
                  ),
                )
              ],
            ),
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
      child: Padding(
        padding: padding,
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(bottom: 15.0),
              margin: EdgeInsets.only(bottom: 15.0),
              child: Radio<bool>(
                groupValue: groupValue,
                activeColor: basecolor,
                value: value,
                onChanged: (bool newValue) {
                  onChanged(newValue);
                },
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 15.0),
              margin: EdgeInsets.only(bottom: 15.0),
              width: 232.0,
              decoration: BoxDecoration(
                border: indx != 2 ? Border(
                  bottom: BorderSide(
                    color: colordot,
                    width: .8
                  )
                ): null
              ),
              child: Row(
                children: [
                  Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child:
                    Image(image: ExactAssetImage(image),),
                  ),
                  SizedBox(width: 11.0,),
                  Text(label)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
