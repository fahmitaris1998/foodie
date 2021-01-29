import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodie/ui/color.dart';

class TabloginRegister extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 103.0),
                color: Colors.white,
                  child:
                      Image(image: ExactAssetImage("assets/logo.png"))

              ),
            ),
            SizedBox(height: 40.0,),
            Expanded(
              child: DefaultTabController(
                  length: 2,
                  child: Scaffold(
                    appBar: AppBar(
                      elevation: 0,
                      backgroundColor: Colors.white,
                      title: TabBar(
                        unselectedLabelColor: Colors.black,
                        unselectedLabelStyle: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            color: Color.fromRGBO(142, 142, 142, 1)),
                        labelColor: Colors.black,
                        labelPadding: EdgeInsets.fromLTRB(0, 15, 0, 8),
                        labelStyle: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),

                        indicator: UnderlineTabIndicator(
                          borderSide:
                          BorderSide(color: basecolor, width: 3.0),
                            insets: EdgeInsets.symmetric(horizontal:25.0)
                        ),
                        tabs: [
                          Tab(text: "Login"),
                          Tab(text: "Sing-up"),
                        ],
                      ),
                    ),
                    body: TabBarView(
                      children: [
                        Login(),
                        Icon(Icons.movie),
                      ],
                    ),
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 64.0,),
              Theme(
                data: new ThemeData(
                  primaryColor: Colors.black,
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email Address',
                  ),
                  onSaved: (String value) {
                    // This optional block of code can be used to run
                    // code when the user saves the form.
                  },
                  validator: (String value) {
                    return value.contains('@') ? 'Do not use the @ char.' : null;
                  },
                ),
              ),
              SizedBox(height: 20.0,),
              Theme(
                data: new ThemeData(
                  primaryColor: Colors.black,
                ),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                  ),
                  onSaved: (String value) {
                    // This optional block of code can be used to run
                    // code when the user saves the form.
                  },
                  validator: (String value) {
                    return value.contains('@') ? 'Do not use the @ char.' : null;
                  },
                ),
              ),
              SizedBox(height: 34.0,),
              Text("Forgot passcode?", style: TextStyle(fontSize: 17.0,color: basecolor,fontWeight: FontWeight.bold),),
              Container(
                margin: EdgeInsets.only(top: 90.0),
                padding: EdgeInsets.symmetric(vertical: 25),
                decoration: BoxDecoration(
                  color: basecolor,
                  borderRadius: BorderRadius.circular(30.0)
                ),
                child: Center(
                  child: Text("Login",style: TextStyle(fontSize: 17.0,color: Colors.white,fontWeight: FontWeight.bold),),
                ),
              )
            ],

          ),
        ),
      ),
    );
  }
}

