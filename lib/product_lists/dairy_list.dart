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
  List<dairy_model> juices=[
    dairy_model(name: "Orange Juice", price: "\$2.30", ImagePath: "assets/juices/orangejuice.png"),
    dairy_model(name: "Orange Juice", price: "\$2.30", ImagePath: "assets/juices/orangejuice.png"),
    dairy_model(name: "Orange Juice", price: "\$2.30", ImagePath: "assets/juices/orangejuice.png"),
  ];
  List user_cart=[];
  List get _user_cart=>user_cart;
  void addToCart(dairy_model dairy_obj)
  {
    _user_cart.add(dairy_obj);
  }

}