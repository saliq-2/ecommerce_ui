import 'package:ecommerce_ui/models/banner_list.dart';
import 'package:ecommerce_ui/models/grid_view_list.dart';
import 'package:ecommerce_ui/pages/dairy.dart';
import 'package:ecommerce_ui/pages/fruits.dart';
import 'package:flutter/material.dart';

class homepage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.grey,
        elevation: 0,
        leading: Icon(Icons.list),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.notifications),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey.shade200,
        child: Column(
         // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width:300,
              child: TextField(


                decoration: InputDecoration(filled:true,
                  prefixIcon: Icon(Icons.search),
                  label: Text("Search"),
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                  )
                ),
              ),
            ),
            Container(
              width: 400,
              height: 200,
              child: ListView.builder(
                  itemCount: banner_list().banner_items.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index)=>

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 350,
                    height: 100,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                        color: Colors.white,
                      image: DecorationImage(
                      //  fit: BoxFit.cover,
                       alignment: Alignment.topLeft,
                       image: AssetImage(banner_list().banner_items[index].ImagePath)
                      )
                    ),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(banner_list().banner_items[index].Discount,style: TextStyle(color: Colors.green),),
                        ),
                      ],
                    ) ,
                  ),
                )

              ),
            ),
          SizedBox(height: 10,),

          Padding(
            padding: const EdgeInsets.only(right: 300),
            child: Text("Categories"),
          ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  child: Column(
                    children: [
                      Image.asset("assets/images/fruits.png",width:60 ,height: 60,),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Fruits"),
                      )
                    ],
                  ),  
                ),
                Container(
                  height: 100,
                  width: 100,
                  child: Column(
                    children: [
                      Image.asset("assets/images/drink.png",width:60 ,height: 60,),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Drinks"),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  child: Column(
                    children: [
                      InkWell(

                          child: Image.asset("assets/images/dairy-products.png",width:60 ,height: 60,),
                        onTap: (){

                            Navigator.push(context, MaterialPageRoute(builder: (context)=>dairy()));
                          }

                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Dairy"),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  child: Column(
                    children: [
                      Image.asset("assets/images/vegetable.png",width:60 ,height: 60,),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Vegetable"),
                      )
                    ],
                  ),
                ),



                ],
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(right: 320),
              child: Text("Popular",style: TextStyle(fontSize: 25),),
            ),
            Container(
              width: 400,
              height: 350,
              child: GridView.builder(

                scrollDirection: Axis.vertical,
                  itemCount: grid_view_list().grid_items.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                  childAspectRatio: 1/1.3
                  //  mainAxisSpacing: 10,

                  ),
                  itemBuilder: (context,index)=>
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      // height: 50,
                      // width: 40,
                      decoration: BoxDecoration(
                        //color: Colors.green,
                        border: Border.all(color: Colors.lightGreenAccent,style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(11),
                      ),


                      child: Column(
                        
                        children: [
                          ClipRRect(
                            
                            child: SizedBox(

                              child: Image.asset(grid_view_list().grid_items[index].ImagePath,

                                fit: BoxFit.cover,
                                alignment: Alignment.topCenter,),
                              height: 170,
                            ),

                            
                          ),
                          Container(
                            width: 405,
                              height: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: Colors.greenAccent.shade100,
                              ),

                              child: Text("data")),
                        ],
                      ),

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