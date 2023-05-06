import 'package:ecommerce_ui/product_lists/dairy_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class cart extends StatelessWidget
{

  @override
  Widget build(BuildContext context) {
    return Consumer<dairy_list>(
      builder: (context,model_obj,child)=>
       Scaffold(
         appBar: AppBar(

         ),
         body: Container(
           //height: 600,
           //color: Colors.black,
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