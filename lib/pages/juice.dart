import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';

import '../product_lists/dairy_list.dart';
import 'cart.dart';

class juice extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer<dairy_list>(
      builder: (context,notifier_model_obj,child)=>
          Scaffold(
            appBar: AppBar(
              actions: [
                IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>cart()));
                },
              ),],
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

                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 2/2.5),
                      itemCount:dairy_list().juices.length,

                      itemBuilder: (context,index)=>
                          Container
                            (

                              margin: EdgeInsets.all(9),
                              width:100,
                              decoration: BoxDecoration(
                                //color: Colors.greenAccent,
                                borderRadius: BorderRadius.circular(11),
                              ),
                              height: 100,
                              child: Column(
                                children: [
                                  Image.asset(dairy_list().juices[index].ImagePath ,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(dairy_list().juices[index].price),
                                      ),
                                      InkWell(
                                          onTap: (){
                                            notifier_model_obj.addToCart(notifier_model_obj.juices[index]);
                                            showDialog(context: context,builder: (context)=>
                                                AlertDialog(
                                                  title: Text("Added to Cart"),
                                                )

                                            );
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