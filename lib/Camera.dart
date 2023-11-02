import 'package:flutter/material.dart';


class Camera extends StatelessWidget {
  Camera({Key? key});

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
              Container(
                padding: EdgeInsets.all(16), // Add padding around the container
                color: Colors.yellow, // Set the background color of the container
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        // Add your button 1 click logic here
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(167, 160, 108, 1),
                        textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0), // Make the button round
                        ),
                      ),
                      child: Text('Camera',
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),),

                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Add your button 2 click logic here
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(167, 160, 108, 1),
                        textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0), // Make the button round
                        ),
                      ),
                      child: Text('Gallery',
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),),
                    ),
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
