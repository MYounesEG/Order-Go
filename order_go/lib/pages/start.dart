import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:order_go/theme/color.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
    
      appBar: AppBar(
        
        //Profile
        actions: <Widget>[
        IconButton(
          
          icon:const  Icon(Icons.person),
          padding: const EdgeInsets.only(right: 30),
          iconSize: 40,
          color: bg,
          onPressed: () {
            // Arama işlemini tetikle
          },
        )
        ],

        //Menu Button
        leading: IconButton(
          padding: const EdgeInsets.only(left: 30,bottom: 10),
          icon: const Icon(Icons.menu),
          iconSize: 40,
          color: bg,
          onPressed: () {
            
          },
        ),
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
      
      extendBodyBehindAppBar: true,

      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          
           Stack(
              children: [
                SvgPicture.asset('assets/backgorund/background.svg',alignment: Alignment.topCenter,height:930,),
                Padding(
                  padding: const EdgeInsets.only(top: 270.0,left: 70),
                  child: SvgPicture.asset('assets/pictres/undraw_off_road_re_leme.svg',width: 300,),
                ),
              ],
             ),
           
             Align(
              alignment: Alignment.bottomCenter,
               child: Text.rich(
                  TextSpan( 
                    text: 'Designed by ',
                    style: TextStyle(
                      fontSize: 16,
                      color: mainColor,
                      fontWeight: FontWeight.normal,
                      fontFamily: "Poppins"
                      
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: "Bug Zappers",
                        style: TextStyle(
                          fontSize: 16,
                          color: mainColor,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Poppins"
                        )
                      )
                    ]
                  )
                  
                ),
             ),
            
          
        ],
      )
      

      

    );
  }
}