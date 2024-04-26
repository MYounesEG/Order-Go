import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:order_go/pages/start.dart';
import 'package:order_go/theme/color.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>  with SingleTickerProviderStateMixin{

   
  @override
  
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    
    Future.delayed(Duration(seconds: 5),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context) => StartPage(),));
    }) ;
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays: SystemUiOverlay.values);
    super.dispose();
  }





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
        ),

        // bottom text

        Container(
          alignment: Alignment.bottomCenter,
          padding: EdgeInsets.only(top: 50),
          child: Text.rich(
            TextSpan(
              text: 'Designed by ',
              style: TextStyle(
                fontSize: 16,
                color: bg,
                fontWeight: FontWeight.normal,
                fontFamily: "Poppins"
                
              ),
              children: <TextSpan>[
                TextSpan(
                  text: "Bug Zappers",
                  style: TextStyle(
                    fontSize: 16,
                    color: bg,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Poppins"
                  )
                )
              ]
            )
            
          ),
        ),


      ],),
      
      
    );
  }
}