import 'package:flutter/material.dart';
import 'package:order_go/pages/history.dart';
import 'package:order_go/pages/homepage.dart';
import 'package:order_go/pages/settings_page.dart';
import 'package:order_go/theme/color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        //Profile
        
          leading: SizedBox(height: 20,width: 32,),
        //Menu Button
        
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
        child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start, // Sola yaslama
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Profile',
                    style: TextStyle(
                      fontSize: 40, // Metin boyutu
                      color: mainColor,
                      fontFamily: "Poppins",
                          fontWeight: FontWeight.bold, // Metin rengi
                    ),
                  ),
                ),
                SizedBox(height: 25,),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Username',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: "Poppins",
                          fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Esref Design',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(color: Colors.green), // Aktif olduğunda border rengi
                    ),
                  ),
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Poppins",
                          fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: "Poppins",
                          fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    hintText: '*********',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(color: Colors.green), // Aktif olduğunda border rengi
                    ),
                  ),
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Poppins",
                          fontWeight: FontWeight.bold,
                  ),
                  obscureText: true, 
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Phone number',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: "Poppins",
                          fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    hintText: '0536 592 1618',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(color: Colors.green), // Aktif olduğunda border rengi
                    ),
                  ),
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Poppins",
                          fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 70.0,left: 70),
                  child: SvgPicture.asset('assets/pictres/undraw_personal_information_re_vw8a.svg',width: 300,),
                ),
                

                Stack(
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
                )

              ],
              
            ),
          ),
          
        ),

        
              
      
      
    );
  }
}
