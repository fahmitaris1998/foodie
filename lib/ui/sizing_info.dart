import 'package:flutter/cupertino.dart';
import 'package:foodie/enums/device_screen_type.dart';
import 'package:foodie/enums/device_screen_type.dart';

class SizingInfo{
  final Orientation orientation;
  final DeviceScreenType deviceScreenType;
  final Size screenSize;
  final Size localWidgetSize;

  SizingInfo(
      {this.orientation,
      this.deviceScreenType,
      this.screenSize,
      this.localWidgetSize});

  @override
  String toString() {
    // TODO: implement toString
    return 'Orientation:$orientation DeviceType:$deviceScreenType ScreenSize:$screenSize localWidgetSize:$localWidgetSize';
  }


}