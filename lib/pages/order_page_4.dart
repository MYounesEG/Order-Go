import 'package:flutter/material.dart';
import 'package:order_go/pages/homepage.dart';
import 'package:order_go/pages/order_page_3.dart';
import 'package:order_go/pages/profile.dart';
import 'package:order_go/pages/settings_page.dart';
import 'package:order_go/theme/color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class OrderPageFour extends StatefulWidget {
  const OrderPageFour({Key? key}) : super(key: key);

  @override
  State<OrderPageFour> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPageFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        //Profile
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.person),
            padding: EdgeInsets.only(right: 30),
            iconSize: 40,
            color: bg,
            onPressed: () {
              // Arama işlemini tetikle
            },
          )
        ],

        //Menu Button
        leading: IconButton(
          padding: EdgeInsets.only(left: 30, bottom: 10),
          icon: Icon(Icons.menu),
          iconSize: 40,
          color: bg,
          onPressed: () {},
        ),
        toolbarHeight: 100,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
        backgroundColor: mainColor,
        flexibleSpace: FlexibleSpaceBar(
          background: Padding(
            padding: const EdgeInsets.only(
                top: 80.0, bottom: 30, right: 33, left: 33),
            child: SvgPicture.asset('assets/order_go.svg'),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child:Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start, // Sola yaslama
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                
                Center(

                  child: Text("Order Details",
                  style: TextStyle(color: mainColor,
                  fontSize: 40,fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold),
                  
                  ),
                  
                ),
                
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      height: 4,
                      width: 150,
                      color: mainColor,
                    ),
                  ),
                ),

                SizedBox(
                  height: 45,
                ),

                Center(
                  child: Text("Balbuks",
                  style: TextStyle(color: Colors.white,
                  fontSize: 24,fontFamily: 'Poppins',
                  fontWeight: FontWeight.normal),
                  
                  ),
                ),

                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      height: 120,
                      width: 4,
                      color: mainColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text("Filter Coffee",
                  style: TextStyle(color: Colors.white,
                  fontSize: 24,fontFamily: 'Poppins',
                  fontWeight: FontWeight.normal),
                  
                  ),
                ),

                  Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      height: 120,
                      width: 4,
                      color: mainColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text("5 Minute Later",
                  style: TextStyle(color: Colors.white,
                  fontSize: 24,fontFamily: 'Poppins',
                  fontWeight: FontWeight.normal),
                  
                  ),
                ),


                  SizedBox(
                  height: 40,
                ),

                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 100,vertical: 20),
                    child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder:(context) => HomePage(),));
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25), // Köşeleri yuvarlatmak içi
                              ),
                            minimumSize: Size(200, 80),
                            backgroundColor: mainColor, // Doğru parametre backgroundColor olarak kullanılır
                            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                            // Diğer özellikleri buraya ekleyebilirsiniz
                          ),
                          child: Text(
                            'Back home',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              color : bg,
                            ),
                          ),
                        ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(),
                  child: Stack(
                    children: [
                        
                    
                    Container(
                    padding: EdgeInsets.all(10),
                    height: 120,
                    width: 500,
                    
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft:Radius.circular(30),topRight:Radius.circular(30)),
                      
                    ),
                  ),
                    Row(
                      
                    
                      children: [
                        
                    IconButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder:(context) => SettingsPage(),));
                    },
                      icon:Icon(Icons.settings),
                      
                      color: bg,
                      iconSize: 50,
                      padding: EdgeInsets.only(top: 10,bottom: 10,left: 20)),
                  
                    
                  
                     IconButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder:(context) => HomePage(),));
                     },
                      icon:Icon(Icons.home),
                      iconSize: 50,
                      color: mainColor,
                      padding: EdgeInsets.only(top: 30,bottom: 30,right: 130,left: 130)),
                    
                    
                  
                     IconButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder:(context) => ProfilePage(),));
                     },
                      icon:Icon(Icons.person),
                      iconSize: 50,
                      color: bg,
                      padding: EdgeInsets.only(right: 10)),
                      ],
                    )
                      
                    
                    
                  
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      
      
          
      
    );
  }
}
