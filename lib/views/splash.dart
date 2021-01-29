import 'package:flutter/material.dart';
import 'package:foodie/ui/base_widget.dart';
import 'package:foodie/ui/color.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseWidget(builder: (context,sizinginfo){
      return Container(
        height: double.infinity,
        width: double.infinity,
        color: basecolor,
        child: SafeArea(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: ExactAssetImage('assets/splash.png'),
                    fit: BoxFit.cover
                )
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 51),
              child: Column(
                children: [
                  Expanded(child: SizedBox()),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 25.0),
                    margin: EdgeInsets.only(bottom: 36.0),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: Text("Get started",style: TextStyle(fontFamily: "SF Pro Text",fontSize:17.0,fontWeight:FontWeight.bold,color: basecolor),textAlign: TextAlign.center,),

                  )
                ],
              ),
            ),
          ),
        ),
      );
    }

    );
  }
}
