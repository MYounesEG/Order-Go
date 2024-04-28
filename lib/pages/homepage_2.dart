import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:order_go/pages/history.dart';
import 'package:order_go/pages/homepage.dart';
import 'package:order_go/pages/homepage_3.dart';
import 'package:order_go/pages/order_page.dart';
import 'package:order_go/pages/profile.dart';
import 'package:order_go/pages/settings_page.dart';
import 'package:order_go/theme/color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePageTwo extends StatelessWidget {
  const HomePageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(

        //Profile
        leading: SizedBox(height: 32,),

        //Menu Button
        
        toolbarHeight: 100,
        shape:RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
        backgroundColor:mainColor,
        flexibleSpace: FlexibleSpaceBar(
          background: 
          Padding(
            padding: const EdgeInsets.only(top: 80.0,bottom: 30,right: 33,left: 33),
            child: SvgPicture.asset('assets/order_go.svg'),
          ),

        ),



      ), 
      body: SingleChildScrollView(
        
        child: 
           Center(
            child: Column(
              
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start, // Sola yaslama
              children: <Widget>[
                Stack(
                  children: [
                       IconButton(
                    padding: EdgeInsets.only(top: 10,left:50),
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: mainColor,
                    ),
                    iconSize: 30, // İkon
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder:(context) => HomePage(),));// Butona basıldığında yapılacak işlemler
                    },
                  ),

                  IconButton(
                    padding: EdgeInsets.only(top:10,left:370),
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: mainColor,
                    ),
                    iconSize: 30, // İkon
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder:(context) => HomePageThree(),));// Butona basıldığında yapılacak işlemler
                    },
                  ),
                  Center(
                   child: Text(
                            'Favorites',
                            style: TextStyle(
                              fontSize: 45, // Metin boyutu
                              color: mainColor,
                              fontFamily: "Poppins",
                                fontWeight: FontWeight.w700,
                               // Metin rengi
                            ),
                                
                      ),
                 ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                 
                

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                  child: Container(
                    //width: 300,
                    height: 520,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40), // Köşeleri yuvarlatma
                      border: Border.all(
                        color: mainColor, // Sınır rengi
                        width: 5, // Sınır genişliği
                      ), // Arkaplan rengi burada belirlenir
                      // Diğer dekorasyon özellikleri buraya eklenebilir
                    ),
                    child:ListView(
                      children: <Widget>[
                        
                        Padding(
                          padding: const EdgeInsets.only(left:20,right: 20,top: 20),
                          child: Container(
                            child: Center(
                              child: Text(
                                "Espresso",
                                style: TextStyle(
                                  fontSize: 30, // Metin boyutu
                                  color: Colors.white,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w700, // Metin rengi
                                ),
                                    
                              ),
                            ),
                            height: 75,
                            decoration: BoxDecoration(
                              color:bg,
                              borderRadius: BorderRadius.circular(10), // Köşeleri yuvarlatma
                              border: Border.all(
                                color: bg, // Sınır rengi
                                width: 5, // Sınır genişliği
                              ),
                              
                  
                            ),
                          ),
                        ),
                        
                        Padding(
                          padding: const EdgeInsets.only(left:20,right: 20,top: 20),
                          child: Container(
                              child: Center(
                              child: Text(
                                "Filter Coffee",
                                style: TextStyle(
                                  fontSize: 30, // Metin boyutu
                                  color: Colors.white,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w700, // Metin rengi
                                ),
                                    
                              ),
                            ),
                            height: 75,
                            decoration: BoxDecoration(
                              color:bg,
                              borderRadius: BorderRadius.circular(10), // Köşeleri yuvarlatma
                              border: Border.all(
                                color: bg, // Sınır rengi
                                width: 5, // Sınır genişliği
                              ), // Arkaplan rengi burada belirlenir
                              // Diğer dekorasyon özellikleri buraya eklenebilir
                            ),
                          ),
                        ),
                  
                        Padding(
                          padding: const EdgeInsets.only(left:20,right: 20,top: 20),
                          child: Container(
                            child: Center(
                              child: Text(
                                "Americano",
                                style: TextStyle(
                                  fontSize: 30, // Metin boyutu
                                  color: Colors.white,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w700, // Metin rengi
                                ),
                                    
                              ),
                            ),
                            height: 75,
                            decoration: BoxDecoration(
                              color:bg,
                              borderRadius: BorderRadius.circular(10), // Köşeleri yuvarlatma
                              border: Border.all(
                                color: bg, // Sınır rengi
                                width: 5, // Sınır genişliği
                              ), // Arkaplan rengi burada belirlenir
                              // Diğer dekorasyon özellikleri buraya eklenebilir
                            ),
                          ),
                        ),
                  
                        Padding(
                          padding: const EdgeInsets.only(left:20,right: 20,top: 20),
                          child: Container(
                            child: Center(
                              child: Text(
                                "Flat White",
                                style: TextStyle(
                                  fontSize: 30, // Metin boyutu
                                  color: Colors.white,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w700, // Metin rengi
                                ),
                                    
                              ),
                            ),
                            height: 75,
                            decoration: BoxDecoration(
                              color:bg,
                              borderRadius: BorderRadius.circular(10), // Köşeleri yuvarlatma
                              border: Border.all(
                                color: bg, // Sınır rengi
                                width: 5, // Sınır genişliği
                              ), // Arkaplan rengi burada belirlenir
                              // Diğer dekorasyon özellikleri buraya eklenebilir
                            ),
                          ),
                        ),
                  
                        Padding(
                          padding: const EdgeInsets.only(left:20,right: 20,top: 20),
                          child: Container(
                            child: Center(
                              child: Text(
                                "Lungo",
                                style: TextStyle(
                                  fontSize: 30, // Metin boyutu
                                  color: Colors.white,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w700, // Metin rengi
                                ),
                                    
                              ),
                            ),
                            height: 75,
                            decoration: BoxDecoration(
                              color:bg,
                              borderRadius: BorderRadius.circular(10), // Köşeleri yuvarlatma
                              border: Border.all(
                                color: bg, // Sınır rengi
                                width: 5, // Sınır genişliği
                              ), // Arkaplan rengi burada belirlenir
                              // Diğer dekorasyon özellikleri buraya eklenebilir
                            ),
                          ),
                        ),
                  
                      ],
                    ),
                  ),
                ),
                
               

                Padding(
                  padding: const EdgeInsets.only(top: 10,),
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder:(context) => OrderPageOne(),));
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25), // Köşeleri yuvarlatmak içi
                          ),
                        minimumSize: Size(200, 30),
                        backgroundColor: mainColor, // Doğru parametre backgroundColor olarak kullanılır
                        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                        // Diğer özellikleri buraya ekleyebilirsiniz
                      ),
                      child: Text(
                        'Order Now',
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
                SizedBox(
                  height: 20,
                ),

                Stack(
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
                )
                
                
              ],
              
            ),
          ),
        
        
      ),
      
      
      
    );
  }
}