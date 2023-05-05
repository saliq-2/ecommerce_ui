import 'package:ecommerce_ui/pages/homepage.dart';
import 'package:ecommerce_ui/product_lists/dairy_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    // TODO: implement build
    return MultiProvider
      (
        providers: [
          ChangeNotifierProvider(create: (context)=>dairy_list()),
    ],


        child: MaterialApp(home: homepage(),)
    );
  }
}
