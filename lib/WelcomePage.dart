import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(103, 93, 80, 1),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.fromLTRB(18, 18, 18, 18),
          child: Column(
            children: [
              Center(
                child: SizedBox(
                  width: 210,
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      text: 'Welcome to\n',
                      style: TextStyle(
                        fontSize: 35,
                        color: Color.fromRGBO(243, 222, 186, 1),
                        fontWeight: FontWeight.bold,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'ArtSense!',
                          style: TextStyle(
                            fontSize: 45,
                            color: Color.fromRGBO(243, 222, 186, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: size.width,
                  margin: const EdgeInsets.only(top: 25, bottom: 25),
                  child: Image.asset('assets/Welcome1.png', height: 433, width: 304),
                ),
              ),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  'Identify art paintings \non which style category \nthey belong using camera \nor photos on your gallery.\n',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromRGBO(243, 222, 186, 1),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                width: 135,
                height: 46,

                child: ElevatedButton(
                  onPressed: () {
                    // Add your button click logic here
                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromRGBO(243, 222, 186, 1),
                    textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),

                  ),
                  child: const Text('Get Started',
                  style: TextStyle(
                    color: Color.fromRGBO(103, 93, 80, 1),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


