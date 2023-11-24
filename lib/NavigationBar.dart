import 'package:artsense/HomePage.dart';
import 'package:flutter/material.dart';
import 'Paintings.dart';

class MyNavigation extends StatefulWidget {
  const MyNavigation({Key? key}) : super(key: key);

  @override
  State<MyNavigation> createState() => NavigationBar();
}

class NavigationBar extends State<MyNavigation>{
   int Myindex = 0;
   List<Widget> widgetList = const [
     MyHomePage(),
     Genre(),
    // Center(child: Text('staph', style: TextStyle(fontSize: 30),),)
   ];
   @override
  Widget build(BuildContext context){
     return Scaffold(
       //backgroundColor: Colors.white,//Color.fromRGBO(245, 245, 219, 1),
       body: widgetList[Myindex],
       bottomNavigationBar :  BottomNavigationBar(
           backgroundColor: Colors.white,
           currentIndex: Myindex,
           type: BottomNavigationBarType.fixed,
           items: const [
              BottomNavigationBarItem(
                 icon:  Icon(Icons.home_outlined ,),//Image.asset('assets/home_outline.png',),
                 activeIcon: Icon(Icons.home_filled,), //Image.asset('assets/icon _home_.png',),
                 label: 'Home'),
              BottomNavigationBarItem(
                 icon: Icon(Icons.palette_outlined),//Image.asset('assets/emoji _artist palette_.png', ),
                 activeIcon: Icon(Icons.palette),//Image.asset('assets/palette_filled.png',),
                 label: 'Paintings'),
              /*BottomNavigationBarItem(
                 icon:  Icon(Icons.help_outline, ),
                 activeIcon: Icon(Icons.help, ),
                 label: 'Help'),*/
           ],
           onTap: (index) {
           setState(() {
           Myindex = index;
            }
          );
        },
         selectedItemColor: const Color.fromRGBO(66, 103, 178, 1),
         unselectedItemColor: Color.fromRGBO(66, 103, 178, 1),
         iconSize: 35,
         selectedLabelStyle: const TextStyle(
           fontSize: 16, // Set the font size for the selected label
           fontFamily: 'Montserrat', // Set your desired font family for the selected label
         ),
         unselectedLabelStyle: const TextStyle(
           fontSize: 14, // Set the font size for the unselected label
           fontFamily: 'Montserrat', // Set your desired font family for the unselected label
         ),
       ),

     );
   }
}

/*

import 'package:flutter/material.dart';
import 'package:persistent_bottom/ImagePop.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CustomNavigatorHomePage(),
    );
  }
}*/
