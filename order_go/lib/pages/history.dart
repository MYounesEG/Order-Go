import 'package:flutter/material.dart';
import 'package:order_go/theme/color.dart';
import 'package:flutter_svg/flutter_svg.dart';


class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

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
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left:30 ),
                  child: Text(
                    'History',
                    style: TextStyle(
                      fontSize: 30, // Metin boyutu
                      color: mainColor, // Metin rengi
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: mainColor,
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
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
                  child: Container(
                    height: 100,
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
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
                  child: Container(
                    height: 100,
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
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
                  child: Container(
                    height: 100,
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
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
                  child: Container(
                    height: 100,
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
