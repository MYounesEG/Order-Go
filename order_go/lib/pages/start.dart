import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:order_go/theme/color.dart';

class Start_page extends StatelessWidget {
  const Start_page({super.key});

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
          padding: EdgeInsets.only(left: 30,bottom: 10),
          icon: Icon(Icons.menu),
          iconSize: 40,
          color: bg,
          onPressed: () {
            
          },
        ),
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
      
      

    );
  }
}