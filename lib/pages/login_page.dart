import 'package:flutter/material.dart';
import 'package:order_go/pages/homepage.dart';
import 'package:order_go/pages/start.dart';
import 'package:order_go/theme/color.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
      body: SingleChildScrollView(

        child: Padding(
          padding: EdgeInsets.all(40), // Yatay yönde genişlik verelim
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start, // Sola yaslama
              children: <Widget>[
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), // Köşeleri yuvarlatmak için
                    border: Border.all(width: 2, color: mainColor), // Border kalınlığı ve rengi
                  ),
                  child: IconButton(
                    padding: EdgeInsets.only(bottom: 1,left:5),
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: mainColor,
                    ),
                    iconSize: 15, // İkon
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder:(context) => StartPage(),));// Butona basıldığında yapılacak işlemler
                    },
                  ),
                ),

                SizedBox(height: 30),    
                Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    
                  ),
                ),
                SizedBox(height: 30),
                TextField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    hintText: 'username',
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
                                fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 30),
                TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    hintText: 'password',
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
                                fontWeight: FontWeight.w700,
                  ),
                  obscureText: true, 
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  
                onPressed: () {
                  // Check if username and password are not empty
                  if (_usernameController.text.isNotEmpty &&
                      _passwordController.text.isNotEmpty) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  } else{
                    // Handle the case where either username or password is empty
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Please fill in both username and password.'),
                      ),
                    );
                    // You can also change the button style to indicate the error
                  }
                },
                  style: ElevatedButton.styleFrom(
                    
                    shape: RoundedRectangleBorder(
                      
                        borderRadius: BorderRadius.circular(10), // Köşeleri yuvarlatmak içi
                      ),
                    minimumSize: Size(400, 50),
                    backgroundColor: mainColor, // Doğru parametre backgroundColor olarak kullanılır
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                    
                    // Diğer özellikleri buraya ekleyebilirsiniz
                  ),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 20,
                      color: bg,
                    ),
                  ),
                ),

                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(),
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      padding: EdgeInsets.only(top: 340),
                      child: Text.rich(
                        TextSpan(
                          text: 'Designed by ',
                          style: TextStyle(
                            fontSize: 16,
                            color: mainColor,
                            fontFamily: "Poppins",
                                  fontWeight: FontWeight.w300,
                            
                            
                    
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: "Bug Zappers",
                              style: TextStyle(
                                fontSize: 16,
                                color: mainColor,
                                fontWeight: FontWeight.bold,
                                
                              )
                            )
                          ]
                        )
                    
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
