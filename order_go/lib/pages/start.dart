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
                //login button
                Center(
                  child: Padding(
                     padding: const EdgeInsets.only(top: 600.0,),
                     child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder:(context) => LoginPage(),));
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15), // Köşeleri yuvarlatmak içi
                            ),
                          minimumSize: Size(400, 50),
                          backgroundColor: mainColor, // Doğru parametre backgroundColor olarak kullanılır
                          padding: EdgeInsets.symmetric( vertical: 20),
                          // Diğer özellikleri buraya ekleyebilirsiniz
                        ),
                        child: Text(
                          'Login',
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

                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 695),
                    child: Container(
                      height:80 ,
                      width: 400,
                      
                      decoration: BoxDecoration(
                        color: mainColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                //sign up button
                 Center(
                   child: Padding(
                     padding: const EdgeInsets.only(top: 700.0),
                     child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder:(context) => SignUp(),));
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15), // Köşeleri yuvarlatmak içi
                            ),
                          minimumSize: Size(390, 45),
                          backgroundColor: bg, // Doğru parametre backgroundColor olarak kullanılır
                          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                          // Diğer özellikleri buraya ekleyebilirsiniz
                        ),
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                            color : mainColor,
                          ),
                        ),
                      ),
                   ),
                 ),
            

                SvgPicture.asset('assets/backgorund/background.svg',alignment: Alignment.topCenter,height:930,),
                Padding(
                  padding: const EdgeInsets.only(top: 392.0,left: 70),
                  child: SvgPicture.asset('assets/pictres/undraw_off_road_re_leme.svg',width: 300,),
                ),
              
              //
                //login button
                Center(
                  child: Padding(
                     padding: const EdgeInsets.only(top: 600.0,),
                     child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder:(context) => LoginPage(),));
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15), // Köşeleri yuvarlatmak içi
                            ),
                          minimumSize: Size(400, 50),
                          backgroundColor: Colors.transparent, // Doğru parametre backgroundColor olarak kullanılır
                          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                          // Diğer özellikleri buraya ekleyebilirsiniz
                        ),
                        child: Text(
                          '',
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
              //
              
              ],
             ),

            

             Align(
              alignment: Alignment.bottomCenter,
               child: Text.rich(
                  TextSpan( 
                    text: 'designed by ',
                    style: TextStyle(
                      fontSize: 16,
                      color: mainColor,
                      fontWeight: FontWeight.normal,
                      fontFamily: "Poppins"
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: "bug zappers",
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
