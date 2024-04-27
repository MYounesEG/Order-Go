import 'package:flutter/material.dart';
import 'package:order_go/theme/color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
                
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:120),
                  child: Text(
                          'Favorites',
                          style: TextStyle(
                            fontSize: 30, // Metin boyutu
                            color: Colors.white, // Metin rengi
                          ),
                              
                    ),
                ),

                Container(
                  //width: 300,
                  height: 520,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40), // Köşeleri yuvarlatma
                    border: Border.all(
                      color: mainColor, // Sınır rengi
                      width: 5, // Sınır genişliği
                    ), // Arkaplan rengi burada belirlenir
                    // Diğer dekorasyon özellikleri buraya eklenebilir
                  ),
                  child:ListView(
                    children: <Widget>[
                      
                      Padding(
                        padding: const EdgeInsets.only(left:20,right: 20,top: 20),
                        child: Container(
                          child: Center(
                            child: Text(
                              "Favorites",
                              style: TextStyle(
                                fontSize: 30, // Metin boyutu
                                color: Colors.white, // Metin rengi
                              ),
                                  
                            ),
                          ),
                          height: 75,
                          decoration: BoxDecoration(
                            color:bg,
                            borderRadius: BorderRadius.circular(10), // Köşeleri yuvarlatma
                            border: Border.all(
                              color: bg, // Sınır rengi
                              width: 5, // Sınır genişliği
                            ),
                            

                          ),
                        ),
                      ),
                      
                      Padding(
                        padding: const EdgeInsets.only(left:20,right: 20,top: 20),
                        child: Container(
                        
                          height: 75,
                          decoration: BoxDecoration(
                            color:bg,
                            borderRadius: BorderRadius.circular(10), // Köşeleri yuvarlatma
                            border: Border.all(
                              color: bg, // Sınır rengi
                              width: 5, // Sınır genişliği
                            ), // Arkaplan rengi burada belirlenir
                            // Diğer dekorasyon özellikleri buraya eklenebilir
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left:20,right: 20,top: 20),
                        child: Container(
                        
                          height: 75,
                          decoration: BoxDecoration(
                            color:bg,
                            borderRadius: BorderRadius.circular(10), // Köşeleri yuvarlatma
                            border: Border.all(
                              color: bg, // Sınır rengi
                              width: 5, // Sınır genişliği
                            ), // Arkaplan rengi burada belirlenir
                            // Diğer dekorasyon özellikleri buraya eklenebilir
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left:20,right: 20,top: 20),
                        child: Container(
                        
                          height: 75,
                          decoration: BoxDecoration(
                            color:bg,
                            borderRadius: BorderRadius.circular(10), // Köşeleri yuvarlatma
                            border: Border.all(
                              color: bg, // Sınır rengi
                              width: 5, // Sınır genişliği
                            ), // Arkaplan rengi burada belirlenir
                            // Diğer dekorasyon özellikleri buraya eklenebilir
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left:20,right: 20,top: 20),
                        child: Container(
                        
                          height: 75,
                          decoration: BoxDecoration(
                            color:bg,
                            borderRadius: BorderRadius.circular(10), // Köşeleri yuvarlatma
                            border: Border.all(
                              color: bg, // Sınır rengi
                              width: 5, // Sınır genişliği
                            ), // Arkaplan rengi burada belirlenir
                            // Diğer dekorasyon özellikleri buraya eklenebilir
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                
               

                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25), // Köşeleri yuvarlatmak içi
                        ),
                      minimumSize: Size(300, 30),
                      backgroundColor: mainColor, // Doğru parametre backgroundColor olarak kullanılır
                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      // Diğer özellikleri buraya ekleyebilirsiniz
                    ),
                    child: Text(
                      'Order Now',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        color : bg,
                      ),
                    ),
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          color: Colors.white, // Arka plan rengi
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent, // Arkaplanı saydam yap
          elevation: 0, // Gölgeyi kaldır
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.history,size: 40,color: bg),
              label: 'history', 
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home,size: 40,color: bg),
              label: 'home', 
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings,size: 40,color: bg),
              label: 'settings', 
            ),
          ],
        ),
      ),
    );
  }
}
