import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:foodie/ui/color.dart';
import 'package:foodie/ui/data.dart';
import 'package:foodie/views/checkoutdeliv.dart';
import 'package:foodie/widget/cardcart.dart';
import 'package:toast/toast.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Colors.grey[100],
          child: Column(
            children: [
              Container(
                width: double.infinity,
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 35.0,bottom: 20.0),
                    child: Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          child: Text("Cart",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),textAlign: TextAlign.center,),
                        ),
                        new Positioned(
                            left: 41.0,
                            child: GestureDetector(
                                onTap: (){
                                  Navigator.pop(context);
                                },
                                child: Icon(Icons.arrow_back_ios_rounded,size: 20.0,)))

                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: ExactAssetImage("assets/swipe.png"), height: 20.0,width: 20.0,),
                  SizedBox(width: 5.0,),
                  Text("swipe on an item to delete",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 10.0),)
                ],
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 40.0),
                  margin: EdgeInsets.only(top: 20.0),
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount:3,
                      itemBuilder: (context,index){
                        return Slidable(
                          key: ValueKey(index),
                          actionPane: SlidableDrawerActionPane(),
                          secondaryActions: [
                            Container(
                              padding:EdgeInsets.symmetric(vertical: 28.0,horizontal: 15.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50.0),
                                    color: colorslidable
                                ),
                                child: IconSlideAction(
                                  color: Colors.transparent,
                                  icon: Icons.favorite_border,
                                  closeOnTap: true,
                                  onTap: (){
                                    print("Favorite");
                                    Toast.show("Favorite complete", context,
                                        duration: Toast.LENGTH_LONG,gravity: Toast.BOTTOM
                                    );
                                  },
                                ),
                              ),
                            ),
                            Container(
                              padding:EdgeInsets.symmetric(vertical: 28.0,horizontal: 15.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50.0),
                                  color: colorslidable
                                ),
                                child: IconSlideAction(
                                  color: Colors.transparent,
                                  icon: Icons.delete_outline,
                                  closeOnTap: true,
                                  onTap: (){
                                    print("Delete");
                                    Toast.show("Delete complete", context,
                                    duration: Toast.LENGTH_LONG,gravity: Toast.BOTTOM
                                    );
                                  },
                                ),
                              ),
                            )
                          ],
                          //dismissal: SlidableDismissal(child: SlidableDrawerDismissal()),
                          child: CardCart(image: itemscart[index]["image"],name: itemscart[index]["name"],harga: itemscart[index]["harga"],)
                        );
                      }
                      ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context)=>CheckoutDeliv()));
                },
                child: Container(
                  margin: EdgeInsets.only(left: 50,right: 50,bottom: 41.0),
                  padding: EdgeInsets.symmetric(vertical: 25.0),
                  decoration: BoxDecoration(
                      color:buttonupdate,
                      borderRadius: BorderRadius.circular(30.0)
                  ),
                  child:Center(
                    child:
                    Text("Complete Order",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w600)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
