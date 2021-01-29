import 'package:flutter/material.dart';
import 'package:foodie/ui/color.dart';
import 'package:foodie/views/account1.dart';
import 'package:foodie/views/cart.dart';
import 'package:foodie/views/checkoutdeliv.dart';
import 'package:foodie/views/checkuotpayment.dart';
import 'package:foodie/views/dashboard.dart';
import 'package:foodie/views/detailfood.dart';
import 'package:foodie/views/loginregister.dart';
import 'package:foodie/views/search.dart';
import 'package:foodie/views/splash.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main(){

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body:
          Dashboard()
   );
  }
}
