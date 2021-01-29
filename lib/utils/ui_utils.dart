import 'package:foodie/enums/device_screen_type.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:foodie/enums/device_screen_type.dart';

DeviceScreenType getDeviceType(MediaQueryData mediaQuery){
  var orientation = mediaQuery.orientation;

  double devicewidth = 0;

  if(orientation == Orientation.landscape){
    devicewidth = mediaQuery.size.height;
  } else{
    devicewidth = mediaQuery.size.width;
  }

  if (devicewidth>950){
    return DeviceScreenType.Dekstop;
  }

  if(devicewidth>600){
    return DeviceScreenType.Tablet;
  }

  return DeviceScreenType.Mobile;
}