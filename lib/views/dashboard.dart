import 'package:flutter/material.dart';
import 'package:foodie/animation/FadeAnimation.dart';
import 'package:foodie/ui/color.dart';
import 'package:foodie/ui/data.dart';
import 'package:foodie/views/account.dart';
import 'package:foodie/views/checkuotpayment.dart';
import 'package:foodie/widget/cardmenu.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'cart.dart';
import 'file:///D:/project%20flutter/foodie/lib/Screen/favorite.dart';
import 'file:///D:/project%20flutter/foodie/lib/Screen/history.dart';
import 'file:///D:/project%20flutter/foodie/lib/Screen/user.dart';

import '../Screen/Home.dart';

class Dashboard extends StatefulWidget {
 @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _page = 0;
  GlobalKey _bottomnavigationkey = GlobalKey();
  int _curentindex=0;
  final tabs = [
    Home(),
    Favorite(),
    User(),
    History()
  ];
  double xoffset=0;
  double yoffset=0;
  double scalefactor=1;
  bool isdrawer = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: buttonupdate,
          child: Stack(
              children: [
                Positioned(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 111.0,left: 30.0),
                      child:
                      isdrawer? FadeAnimation(
                        0.3,
                        Column(
                          children: [
                            Expanded(
                              child: ListView(
                                physics: BouncingScrollPhysics(),
                                  children: [
                                    GestureDetector(
                                        onTap: (){
                                          Navigator.push(context, MaterialPageRoute(
                                              builder: (context)=>Account()));

                                        },
                                        child: Menu(image: menu[0]['image'],name: menu[0]['name'],idx: 0,)),
                                    GestureDetector(
                                        onTap: (){
                                          Navigator.push(context, MaterialPageRoute(
                                              builder: (context)=>Cart()));
                                          // setState(() {
                                          //   xoffset=0;
                                          //   yoffset=0;
                                          //   scalefactor=1;
                                          //   isdrawer = false;
                                          // });
                                        },
                                        child: Menu(image: menu[1]['image'],name: menu[1]['name'],idx: 1,)),
                                    Menu(image: menu[2]['image'],name: menu[2]['name'],idx: 2,),
                                    Menu(image: menu[3]['image'],name: menu[3]['name'],idx: 3,),
                                    Menu(image: menu[4]['image'],name: menu[4]['name'],idx: 4,),
                                  ],),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 87.0),
                              child: Row(
                                children: [
                                  Text('Sign-out',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17.0,color: Colors.white),),
                                  SizedBox(width: 10.0,),
                                  Icon(Icons.arrow_forward,color: Colors.white,size: 22.0,)
                                ],
                              ),
                            )
                          ],
                        )
                      ):Container()

                    )),
                AnimatedContainer(
                  transform: Matrix4.translationValues(xoffset-21, yoffset+50, 0)..scale(scalefactor-.035),
                  duration: Duration(milliseconds: 250),
                  child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.0),
                        color: Colors.white.withOpacity(0.2)
                    ),
                  ),
                ),
                AnimatedContainer(
                  transform: Matrix4.translationValues(xoffset, yoffset, 0)..scale(scalefactor),
                  duration: Duration(milliseconds: 250),
                  child: Scaffold(
                  backgroundColor: Colors.transparent,
                  bottomNavigationBar: ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(isdrawer?30.0:0.0),
                    ),
                    child: Container(
                      color: Colors.grey[100],
                      padding: EdgeInsets.only(bottom: 15.0),
                      child: BottomNavigationBar(
                        showSelectedLabels: false,
                        showUnselectedLabels: false,
                        currentIndex: _curentindex,
                        type: BottomNavigationBarType.fixed,
                        backgroundColor: Colors.grey[100],
                        selectedItemColor: basecolor,
                        unselectedItemColor: coloritembotnav,
                        elevation: 0,
                        items: [
                          BottomNavigationBarItem(
                              icon: Icon(Icons.home,size: 31,),
                            title: Text(
                              '',
                            ),
                          ),
                          BottomNavigationBarItem(
                              icon: Icon(Icons.favorite_border,size: 31),
                            title: Text(
                              '',
                            ),

                          ),
                          BottomNavigationBarItem(
                              icon: Icon(Icons.person_outline,size: 31),
                            title: Text(
                              '',
                            ),
                          ),
                          BottomNavigationBarItem(
                              icon: Icon(Icons.history,size: 31),
                            title: Text(
                              '',
                            ),
                          ),
                        ],
                        onTap: (index){
                          setState(() {
                            _curentindex=index;
                          });
                        },
                      ),
                    ),
                  ) ,
                  body: Container(
                    padding: EdgeInsets.only(top: isdrawer? 30.0 : 0),
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(isdrawer? 30.0 : 0 )
                      )
                    ),
                    child: Stack(
                      children: [
                        tabs[_curentindex],
                        isdrawer? Positioned(
                          top: 60,
                          left: 40.0,
                          child: GestureDetector(
                            onTap: () async {
                              setState(() {
                                xoffset=0;
                                yoffset=0;
                                scalefactor=1;
                                isdrawer = false;
                              });
                            },
                            child: Container(
                              color: Colors.transparent,
                              height: 50.0,
                              width: 50.0,
                            ),
                          ),
                        ): Positioned(
                          top: 60,
                          left: 40.0,
                          child: GestureDetector(
                            onTap: () async {
                              setState(() {
                                xoffset=240;
                                yoffset=150;
                                scalefactor=0.6;
                                isdrawer = true;
                              });
                            },
                            child: Container(
                              color: Colors.transparent,
                              height: 50.0,
                              width: 50.0,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
              ),
                ),
                AnimatedContainer(
                  transform: Matrix4.translationValues(xoffset, yoffset, 0)..scale(scalefactor),
                  duration: Duration(milliseconds: 250),
                  child: Visibility(
                    visible: xoffset==0?false:true,
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          xoffset=0;
                          yoffset=0;
                          scalefactor=1;
                          isdrawer = false;
                        });
                      },
                      child: Container(
                            height: double.infinity,
                            width: double.infinity,
                            color: Colors.transparent,
                          )
                    ),
                  ),
                ),

              ]
            ),
        ),
      ),

    );
  }
}
