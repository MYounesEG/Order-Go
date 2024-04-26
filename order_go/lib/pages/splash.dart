import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:order_go/theme/color.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      
      //Splash Screen Elements

      body: ListView(children: [
        //Logo

        Center(
          child: Padding(
            
            
            padding: const EdgeInsets.all(80.0),
            
            child: SvgPicture.asset(
              
              'assets/order_go_wb.svg',
              height: 670,
            
            ),

          //text

          
            
          ),
        )
      ],),
      
      
    );
  }
}