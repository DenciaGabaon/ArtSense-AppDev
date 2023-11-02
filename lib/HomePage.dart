import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 245, 219, 1),
      body: SafeArea(
        child: Center(
            child: Column(
              children: [
                Text(
                  'ArtSense',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  'Choose an option how\n do you want to identify\n your painting?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                ElevatedButton.icon(
                  onPressed: () {
                    // Add your button 1 click logic here
                  },
                  label: Text('Camera'),
                  icon: Icon(
                    Icons.camera,
                    // Use the desired icon or replace with an image widget
                    size: 30, // Set the size of the icon
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(167, 160, 108, 1),
                    minimumSize: Size(186, 68),
                    textStyle: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
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
                  label: Text('Gallery'),
                  icon: Icon(
                    Icons.image,
                    // Use the desired icon or replace with an image widget
                    size: 30, // Set the size of the icon
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(167, 160, 108, 1),
                    minimumSize: Size(186, 68),
                    textStyle: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
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
    );
  }
}
