import 'package:artsense/HomePage.dart';
import 'package:flutter/material.dart';
import 'Paintings.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _HomePageState();
}

class _HomePageState extends State<MyHomePage>{
   int Myindex = 0;
   List<Widget> widgetList = const [
     Home(),
     Genre(),
     Center(child: Text('staph', style: TextStyle(fontSize: 30),),)
   ];
   @override
  Widget build(BuildContext context){
     return Scaffold(
       backgroundColor: Color.fromRGBO(245, 245, 219, 1),
       body: widgetList[Myindex],
       bottomNavigationBar :  BottomNavigationBar(
           backgroundColor: Color.fromRGBO(245, 245, 219, 1),
           currentIndex: Myindex,
           type: BottomNavigationBarType.fixed,
           items: [
              BottomNavigationBarItem(
                 icon:  Image.asset('assets/home_outline.png',),
                 activeIcon: Image.asset('assets/icon _home_.png',),
                 label: 'Home'),
              BottomNavigationBarItem(
                 icon: Image.asset('assets/emoji _artist palette_.png', ),
                 activeIcon: Image.asset('assets/palette_filled.png',),
                 label: 'Paintings'),
              BottomNavigationBarItem(
                 icon:  Icon(Icons.help_outline, ),
                 activeIcon: Icon(Icons.help, ),
                 label: 'Help'),
           ],
           onTap: (index) {
           setState(() {
           Myindex = index;
            }
          );
        },
         selectedItemColor: Colors.black,
         unselectedItemColor: Colors.black,
         iconSize: 50,
         selectedLabelStyle: TextStyle(
           fontSize: 16, // Set the font size for the selected label
           fontFamily: 'Montserrat', // Set your desired font family for the selected label
         ),
         unselectedLabelStyle: TextStyle(
           fontSize: 14, // Set the font size for the unselected label
           fontFamily: 'Montserrat', // Set your desired font family for the unselected label
         ),
       ),

     );
   }
}

