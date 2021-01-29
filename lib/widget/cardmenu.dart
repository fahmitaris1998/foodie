import 'package:flutter/material.dart';
import 'package:foodie/ui/color.dart';

class Menu extends StatelessWidget {
  final String image;
  final String name;
  final int idx;

  const Menu({Key key, this.image, this.name, this.idx}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 26.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(image: ExactAssetImage(image)),
          SizedBox(width: 12.0,),
          Container(
            width: 132.0,
            padding: EdgeInsets.only(bottom: 26.0),
            decoration: BoxDecoration(
              border: idx!=4? Border(
                bottom: BorderSide(
                  width: 0,
                  color: colorsborderside
                )
              ):Border()
            ),
            child:
            Text(name,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17.0,color: Colors.white),),
          )
        ],
      ),
    );
  }
}
