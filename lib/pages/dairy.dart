import 'package:ecommerce_ui/product_lists/dairy_list.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';

import 'cart.dart';

class dairy extends StatelessWidget
{
  //List page1=[cart()];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer<dairy_list>(
      builder: (context,notifier_model_obj,child)=>
       Scaffold(
         appBar: AppBar(
           leading: IconButton(
               icon: Icon(Icons.shopping_cart),
             onPressed: (){
                 Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>cart()));
             },
           ),
         ),
        bottomNavigationBar:
        GNav(
          activeColor: Colors.blue,
          padding: EdgeInsets.all(20),
          gap: 13,
          tabs: [
            GButton(icon: Icons.home,),

            GButton(
              icon: Icons.shopping_cart,onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>cart()));
            },),
            GButton(icon: Icons.person),

          ],
        ),


        body: Container(
          child: Column(
            children: [
              Center(child: Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Text("Dairy Products",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              )),
              Expanded(
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                    itemCount:dairy_list().dairy_items.length,
                    itemBuilder: (context,index)=>
                        Container
                          (

                          margin: EdgeInsets.all(9),
                          width:100,
                          decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(11),
                          ),
                          height: 100,
                          child: Column(
                            children: [
                              Image.asset(dairy_list().dairy_items[index].ImagePath ,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(dairy_list().dairy_items[index].price),
                                  ),
                                  InkWell(
                                      onTap: (){
                                        notifier_model_obj.addToCart(notifier_model_obj.dairy_items[index]);
                                      },
                                      child: Icon(Icons.add)),
                                ],
                              )
                            ],
                          )
                        ),


                ),
              ),
            ],
          ),

        ),
      ),
    );
  }
}