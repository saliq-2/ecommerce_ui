import 'package:flutter/material.dart';

import '../models/dairymodel.dart';

class dairy_list extends ChangeNotifier
{
  List<dairy_model> dairy_items=[
    dairy_model(name: "Cheese", price: "\$1.20", ImagePath: "assets/dairy/cheese.jpg"),
    dairy_model(name: "Cheese", price: "\$1.20", ImagePath: "assets/dairy/cheese.jpg"),
    dairy_model(name: "Cheese", price: "\$1.20", ImagePath: "assets/dairy/cheese.jpg"),
    dairy_model(name: "Cheese", price: "\$1.20", ImagePath: "assets/dairy/cheese.jpg"),
    dairy_model(name: "Cheese", price: "\$1.20", ImagePath: "assets/dairy/cheese.jpg"),
    dairy_model(name: "Cheese", price: "\$1.20", ImagePath: "assets/dairy/cheese.jpg"),
    dairy_model(name: "Cheese", price: "\$1.20", ImagePath: "assets/dairy/cheese.jpg"),
    dairy_model(name: "Cheese", price: "\$1.20", ImagePath: "assets/dairy/cheese.jpg"),
    dairy_model(name: "Cheese", price: "\$1.20", ImagePath: "assets/dairy/cheese.jpg"),
    dairy_model(name: "Cheese", price: "\$1.20", ImagePath: "assets/dairy/cheese.jpg"),
    dairy_model(name: "Cheese", price: "\$1.20", ImagePath: "assets/dairy/cheese.jpg"),
    dairy_model(name: "Cheese", price: "\$1.20", ImagePath: "assets/dairy/cheese.jpg"),
    dairy_model(name: "Cheese", price: "\$1.20", ImagePath: "assets/dairy/cheese.jpg"),
    dairy_model(name: "Cheese", price: "\$1.20", ImagePath: "assets/dairy/cheese.jpg"),
    dairy_model(name: "Cheese", price: "\$1.20", ImagePath: "assets/dairy/cheese.jpg"),
    dairy_model(name: "Cheese", price: "\$1.20", ImagePath: "assets/dairy/cheese.jpg"),
  ];
  List<dairy_model> user_cart=[];
  List<dairy_model> get _user_cart=>user_cart;
  void addToCart(dairy_model dairy_obj)
  {
    _user_cart.add(dairy_obj);
  }

}