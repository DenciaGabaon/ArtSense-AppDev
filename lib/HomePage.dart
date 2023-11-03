import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 245, 219, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(18, 18, 18, 18),
          child: Center(
              child: Column(
                children: [
                  const SizedBox(height: 150),
                  Text(
                    'ArtSense',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 65),
                  Text(
                    'Choose an option how\n do you want to identify\n your painting?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  const SizedBox(height: 65),

                  ElevatedButton.icon(
                    onPressed: () {
                      // Add your button 1 click logic here
                    },
                    label: Text('Camera', style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Montserrat',
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                    )),
                    icon: Image.asset(
                      'assets/icon _photo camera_.png',
                      height: 34,
                      width: 34,
                      // Set the size of the icon
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(167, 160, 108, 1),
                      minimumSize: Size(170, 55),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            30.0), // Make the button round
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton.icon(
                    onPressed: () {
                      // Add your button 1 click logic here
                    },
                    label: Text('Gallery', style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Montserrat',
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                    )),
                    icon:  Image.asset(
                      'assets/icon _gallery add_.png',
                      height: 34,
                      width: 34, // Set the size of the icon
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(167, 160, 108, 1),
                      minimumSize: Size(170, 55),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            30.0), // Make the button round
                      ),
                    ),
                  ),
                ],
              )
          ),
        ),
      ),
    );
  }
}


