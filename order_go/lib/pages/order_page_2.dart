import 'package:flutter/material.dart';
import 'package:order_go/pages/order_page_3.dart';
import 'package:order_go/theme/color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class OrderPageTwo extends StatefulWidget {
  const OrderPageTwo({Key? key}) : super(key: key);

  @override
  State<OrderPageTwo> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPageTwo> {
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
          padding: EdgeInsets.only(left: 30, bottom: 10),
          icon: Icon(Icons.menu),
          iconSize: 40,
          color: bg,
          onPressed: () {},
        ),
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
        child: Padding(
          padding: EdgeInsets.all(20), // Yatay yönde genişlik verelim
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start, // Sola yaslama
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 115),
                  child: Text(
                    'Pick a restaurant',
                    style: TextStyle(
                      fontSize: 20, // Metin boyutu
                      color: Colors.white, // Metin rengi
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50, top: 5),
                  child: Container(
                    height: 130,
                    decoration: BoxDecoration(
                      color: container,
                      borderRadius:
                          BorderRadius.circular(20), // Köşeleri yuvarlatma
                      border: Border.all(
                        color: bg, // Sınır rengi
                        width: 5, // Sınır genişliği
                      ),
                    ),
                  ),
                ),

                 Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50, top: 5),
                  child: Container(
                    height: 130,
                    decoration: BoxDecoration(
                      color: container,
                      borderRadius:
                          BorderRadius.circular(20), // Köşeleri yuvarlatma
                      border: Border.all(
                        color: bg, // Sınır rengi
                        width: 5, // Sınır genişliği
                      ),
                    ),
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50, top: 5),
                  child: Container(
                    height: 130,
                    decoration: BoxDecoration(
                      color: container,
                      borderRadius:
                          BorderRadius.circular(20), // Köşeleri yuvarlatma
                      border: Border.all(
                        color: bg, // Sınır rengi
                        width: 5, // Sınır genişliği
                      ),
                    ),
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50, top: 5),
                  child: Container(
                    height:130,
                    width: 400,
                    decoration: BoxDecoration(
                      color: container,
                      borderRadius:
                          BorderRadius.circular(20), // Köşeleri yuvarlatma
                      border: Border.all(
                        color: bg, // Sınır rengi
                        width: 5, // Sınır genişliği
                      ),
                    ),
                  ),
                ),
                
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 140,vertical: 20),
                  child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder:(context) => OrderPageThree(),));
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25), // Köşeleri yuvarlatmak içi
                            ),
                          minimumSize: Size(200, 80),
                          backgroundColor: mainColor, // Doğru parametre backgroundColor olarak kullanılır
                          padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                          // Diğer özellikleri buraya ekleyebilirsiniz
                        ),
                        child: Text(
                          'Next',
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
          
          currentIndex: 1,
          backgroundColor: Colors.transparent, // Arkaplanı saydam yap
          elevation: 0, // Gölgeyi kaldır
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.history, size: 40, color: bg),
              label: 'history',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 40, color: bg),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings, size: 40, color: bg),
              label: 'settings',
            ),
          ],
        ),
      ),
    );
  }
}
