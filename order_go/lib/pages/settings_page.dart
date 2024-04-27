

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:order_go/pages/history.dart';
import 'package:order_go/pages/homepage.dart';
import 'package:order_go/pages/login_page.dart';
import 'package:order_go/pages/profile.dart';
import 'package:order_go/pages/sign_up.dart';
import 'package:order_go/theme/color.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
    
      appBar: AppBar(
        
        
        toolbarHeight: 100,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
        backgroundColor:mainColor,
        flexibleSpace: FlexibleSpaceBar(
          background: 
          Padding(
            padding: const EdgeInsets.only(top: 80.0,bottom: 30,right: 33,left: 33),
            child: SvgPicture.asset('assets/order_go.svg'),
          ),
          
        ),
    
      ),
      

      body:  ListView(
          
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0,bottom: 20,left: 20),
              child: ListTile(
                
                  leading: Icon(Icons.account_circle, color: Colors.white,size: 50,),
                  horizontalTitleGap:40 , // İkon rengini beyaz yap
                  title: Text('Account', style: TextStyle(color: Colors.white,fontSize: 30),),
                  
                  onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder:(context) => ProfilePage(),)); // Hesap ayarları sayfasına git
                  },
                  
                ),
            ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0,bottom: 20,left: 20),
                child: ListTile(
                  leading: Icon(Icons.history, color: Colors.white,size: 40,),
                  horizontalTitleGap:40 ,
                  title: Text('History', style: TextStyle(color: Colors.white,fontSize: 30)),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context) => HistoryPage(),));// Bildirim ayarları sayfasına git
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0,bottom: 20,left: 20),
                child: ListTile(
                  leading: Icon(Icons.logout, color: Colors.white,size: 40),
                  horizontalTitleGap:40 ,
                  title: Text('Exit app', style: TextStyle(color: Colors.white,fontSize: 30)),
                  onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder:(context) => LoginPage(),)); // Çıkış yap işlemini gerçekleştir
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0,bottom: 20,left: 20),
                child: ListTile(
                  leading: Icon(Icons.feedback, color: Colors.white,size: 40),
                  horizontalTitleGap:40 ,
                  title: Text('FeedBack', style: TextStyle(color: Colors.white,fontSize: 30)),
                  onTap: () {
                    // Geri bildirim sayfasına git
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0,bottom: 20,left: 20),
                child: ListTile(
                  leading: Icon(Icons.help, color: Colors.white,size: 40),
                  horizontalTitleGap:40 ,
                  title: Text('Help', style: TextStyle(color: Colors.white,fontSize: 30)),
                  onTap: () {
                    // Yardım sayfasına git
                  },
                ),
              ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 200),
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
                )
            )
          ],
          
        ),
        
      extendBodyBehindAppBar: true,
    );
  }
}