import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListAccount extends StatelessWidget {
  final String menu;

  const ListAccount({Key key, this.menu}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(top: 20.0,bottom: 20.0,left: 23.0,right: 23.0),
      margin: EdgeInsets.only(bottom: 27.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(menu,style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w600),),
          Icon(Icons.arrow_forward_ios,size: 24.0,)

        ],
      ),
    );
  }
}
