import 'package:foodie/ui/sizing_info.dart';
import 'package:foodie/utils/ui_utils.dart';
import 'package:flutter/material.dart';
import 'package:foodie/ui/sizing_info.dart';
import 'package:foodie/utils/ui_utils.dart';


class BaseWidget extends StatelessWidget {
  final Widget Function(
      BuildContext context, SizingInfo sizingInfo) builder;

  const BaseWidget({Key key, this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(builder : (context, boxconstrain){
      var mediaQuery = MediaQuery.of(context);
      var sizinginfo = SizingInfo(
          orientation: mediaQuery.orientation,
          deviceScreenType: getDeviceType(mediaQuery),
          screenSize: mediaQuery.size,
          localWidgetSize: Size(boxconstrain.maxWidth, boxconstrain.maxHeight)
      );
      return builder (context,sizinginfo);
    });
  }
}
