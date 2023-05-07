import 'package:ecommerce_ui/models/banner_list.dart';
import 'package:ecommerce_ui/models/grid_view_list.dart';
import 'package:ecommerce_ui/pages/cart.dart';
import 'package:ecommerce_ui/pages/dairy.dart';
import 'package:ecommerce_ui/pages/fruits.dart';
import 'package:ecommerce_ui/pages/juice.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class homepage extends StatelessWidget
{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        width: MediaQuery.of(context).size.width*0.4,
        child: ListView(
          children: [
            DrawerHeader(child: CircleAvatar(
              backgroundImage: AssetImage("assets/photo.jpg"),
            )),
            ListTile(
              title: Text("Categories"),
            ),
            ListTile(
              title: Text("Previous Orders"),
            ),
          ],
        ),
      ),



      appBar: AppBar(
        backgroundColor: Colors.grey,
        elevation: 0,
       // leading: Icon(Icons.list),
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
            child: Text("Categories",style: TextStyle(fontWeight: FontWeight.bold),),
          ),
            SizedBox(height: 20,),

            Container(
              height: 140,
              child: ListView(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(9),
                children: [
                  Container(
                    height: 70,
                    width: 100,
                    child: Column(
                      children: [
                        CircleAvatar(

                            backgroundImage: AssetImage("assets/images/fruits1.jpg"),
                          radius: 43,

                        ),
                        Text("Fruits"),

                        // Padding(
                        //   padding: const EdgeInsets.all(8.0),
                        //   child: Text("Fruits"),
                        // )
                      ],
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 100,
                    child: Column(
                      children: [
                        InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>juice()));
                              },
                            child: CircleAvatar(

                              backgroundImage: AssetImage("assets/images/juice1.jpg"),
                              radius: 43,

                            ),
                        ),
                        Text("Juices"),


                      ],
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 100,
                    child: Column(
                      children: [
                        InkWell(

                            child: CircleAvatar(

                              backgroundImage: AssetImage("assets/images/dairy1.jpeg"),
                              radius: 43,

                            ),
                          onTap: (){

                              Navigator.push(context, MaterialPageRoute(builder: (context)=>dairy()));
                            }

                        ),
                        Text("Dairy"),


                      ],
                    ),
                  ),
                  Container(
                    height:70,
                    width: 100,
                    child: Column(
                      children: [
                        CircleAvatar(

                          backgroundImage: AssetImage("assets/images/veges.jpg"),
                          radius: 43,



                        ),
                        Text("Vegetables"),


                      ],
                    ),
                  ),
                  Container(
                    height: 70,
                    color: Colors.blue,
                    width: 100,
                    child: Column(
                      children: [
                        CircleAvatar(

                          backgroundImage: AssetImage("assets/images/veges.jpg"),
                          radius: 43,



                        ),
                        Text("Vegetables"),


                      ],
                    ),
                  ),



                  ],
              ),
            ),
           // SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(right: 320),
              child: Text("Popular",style: TextStyle(fontSize: 25),),
            ),
            Container(
              
              child: Expanded(
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
              ),
            )

          ],
        ),

      ),
    );
  }
}