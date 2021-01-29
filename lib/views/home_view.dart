import 'package:foodie/ui/base_widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseWidget(builder: (context, sizinginfo){
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: sizinginfo.deviceScreenType.toString() == "DeviceScreenType.Mobile"? 150 :400,
                color: sizinginfo.deviceScreenType.toString() == "DeviceScreenType.Mobile"? Colors.blue:Colors.amber,
                margin: sizinginfo.deviceScreenType.toString() == "DeviceScreenType.Mobile"? const EdgeInsets.all(20):const EdgeInsets.all(90),
                child: BaseWidget(builder: (context, sizinginfo)=>
                    Center(
                      child:
                          Text(sizinginfo.toString(),
                            textAlign: TextAlign.center,),
                    ),
                ),
              ),
              Text(sizinginfo.toString()),
            ],
          ),
        ),
      );
    },);
  }
}
