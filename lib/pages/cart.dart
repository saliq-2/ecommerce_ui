import 'package:ecommerce_ui/product_lists/dairy_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class cart extends StatefulWidget
{

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  int total=10;

  @override
  Widget build(BuildContext context) {
    return Consumer<dairy_list>(
      builder: (context,model_obj,child)=>
       Scaffold(
         floatingActionButton: Container(


           //color: Colors.blue,
           child: FittedBox(
             child: FloatingActionButton.extended(
             hoverColor: Colors.blue.shade100,


            label: Text("Pay now $total "),

               onPressed: (){


               },


              // textAlign: TextAlign.center,

              // shape: RoundedRectangleBorder(
              //   borderRadius: BorderRadius.circular(11),
              // ),
             ),
           ),
         ),
         appBar: AppBar(


         ),
         body: Container(
           // height: MediaQuery.of(context).size.height*0.5,
           // width: 200,
           color: Colors.greenAccent,
           child: ListView.builder(
               itemCount: model_obj.user_cart.length,
               itemBuilder: (context,index)=>
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: ListTile(
                       tileColor: Colors.grey,
                       leading:
                       CircleAvatar(
                         backgroundImage: AssetImage(model_obj.user_cart[index].ImagePath),
                     radius:25,




                     ),
                       title: Text(model_obj.user_cart[index].name),
                        trailing: Text(model_obj.user_cart[index].price),


           ),
                   ),
         ),

      ),
       )
    );

  }
}