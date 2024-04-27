import 'package:flutter/material.dart';
import 'package:order_go/pages/homepage.dart';
import 'package:order_go/pages/profile.dart';
import 'package:order_go/pages/settings_page.dart';
import 'package:order_go/theme/color.dart';
import 'package:flutter_svg/flutter_svg.dart';


class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        //Profile
        

        //Menu Button
        leading: SizedBox(height: 12,),
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
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10), // Yatay yönde genişlik verelim
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start, // Sola yaslama
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left:30 ),
                  child: Text(
                    'History',
                    style: TextStyle(
                      fontSize: 30, // Metin boyutu
                      color: mainColor, // Metin rengi
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius:
                          BorderRadius.circular(20), // Köşeleri yuvarlatma
                      border: Border.all(
                        color: bg, // Sınır rengi
                        width: 5, // Sınır genişliği
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: container,
                      borderRadius:
                          BorderRadius.circular(20), // Köşeleri yuvarlatma
                      border: Border.all(
                        color: bg, // Sınır rengi
                        width: 5, // Sınır genişliği
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: container,
                      borderRadius:
                          BorderRadius.circular(20), // Köşeleri yuvarlatma
                      border: Border.all(
                        color: bg, // Sınır rengi
                        width: 5, // Sınır genişliği
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: container,
                      borderRadius:
                          BorderRadius.circular(20), // Köşeleri yuvarlatma
                      border: Border.all(
                        color: bg, // Sınır rengi
                        width: 5, // Sınır genişliği
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: container,
                      borderRadius:
                          BorderRadius.circular(20), // Köşeleri yuvarlatma
                      border: Border.all(
                        color: bg, // Sınır rengi
                        width: 5, // Sınır genişliği
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Stack(
                    children: [
                        
                    
                    Container(
                      
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
                      iconSize: 50,
                      color: bg,
                      padding: EdgeInsets.symmetric(vertical: 30,horizontal: 25)),
                  
                    
                  
                     IconButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder:(context) => HomePage(),));
                     },
                      icon:Icon(Icons.home),
                      iconSize: 50,
                      color: mainColor,
                      padding: EdgeInsets.symmetric(vertical: 30,horizontal: 100)),
                    
                    
                  
                     IconButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder:(context) => ProfilePage(),));
                     },
                      icon:Icon(Icons.person),
                      iconSize: 50,
                      color: bg,
                      padding: EdgeInsets.symmetric(vertical: 30,)),
                      ],
                    )
                      
                    
                    
                  
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
     
      
    );
  }
}
