import 'dart:js_util';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:order_go/pages/login_page.dart';
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
                  title: Text('Hesap', style: TextStyle(color: Colors.white,fontSize: 30),),
                  
                  onTap: () {
                    // Hesap ayarları sayfasına git
                  },
                  
                ),
            ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0,bottom: 20,left: 20),
                child: ListTile(
                  leading: Icon(Icons.notifications, color: Colors.white,size: 40),
                  horizontalTitleGap:40 ,
                  title: Text('Bildirimler', style: TextStyle(color: Colors.white,fontSize: 30)),
                  onTap: () {
                    // Bildirim ayarları sayfasına git
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0,bottom: 20,left: 20),
                child: ListTile(
                  leading: Icon(Icons.logout, color: Colors.white,size: 40),
                  horizontalTitleGap:40 ,
                  title: Text('Çıkış Yap', style: TextStyle(color: Colors.white,fontSize: 30)),
                  onTap: () {
                    // Çıkış yap işlemini gerçekleştir
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0,bottom: 20,left: 20),
                child: ListTile(
                  leading: Icon(Icons.feedback, color: Colors.white,size: 40),
                  horizontalTitleGap:40 ,
                  title: Text('Geri Bildirim', style: TextStyle(color: Colors.white,fontSize: 30)),
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
                  title: Text('Yardım', style: TextStyle(color: Colors.white,fontSize: 30)),
                  onTap: () {
                    // Yardım sayfasına git
                  },
                ),
              ),
            
          ],
          
        ),
      
      extendBodyBehindAppBar: true,
    );
  }
}