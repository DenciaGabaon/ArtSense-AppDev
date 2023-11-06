import 'package:flutter/material.dart';

class Genre extends StatelessWidget {
  const Genre({Key? key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 245, 219, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(18, 18, 18, 18),
          child: Center(
              child: Column(
                children: [
                  const SizedBox(height: 50),
                  Text(
                    'Paintings',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    'List of the paintings\n the app can identify.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const SizedBox(width: 304,
                    child:   Text(
                      'Abstract (20th Century)',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                      ),
                    ),),

                  const SizedBox(height: 10),
                  Container(
                    width: size.width,
                    margin: const EdgeInsets.only(bottom: 15),
                    child: Image.asset('assets/abstract.png', height: 433, width: 304),

                  ),

                  const SizedBox(
                    width:304, height: 80,
                    child: Text(
                    'Abstract painting is a form of art that emphasizes the use of colors, shapes, and gestural marks to convey emotions or ideas rather than a realistic representation of the world.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  ),

                  //REALISM

                  const SizedBox(height: 50),
                  Text(
                    'Paintings',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    'List of the paintings\n the app can identify.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const SizedBox(width: 304,
                    child:   Text(
                      'Abstract (20th Century)',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                      ),
                    ),),

                  const SizedBox(height: 10),
                  Container(
                    width: size.width,
                    margin: const EdgeInsets.only(bottom: 15),
                    child: Image.asset('assets/abstract.png', height: 433, width: 304),

                  ),

                  const SizedBox(
                    width:304, height: 80,
                    child: Text(
                      'Abstract painting is a form of art that emphasizes the use of colors, shapes, and gestural marks to convey emotions or ideas rather than a realistic representation of the world.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),

                  //REALISM

                  const SizedBox(height: 50),
                  Text(
                    'Paintings',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    'List of the paintings\n the app can identify.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const SizedBox(width: 304,
                    child:   Text(
                      'Abstract (20th Century)',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                      ),
                    ),),

                  const SizedBox(height: 10),
                  Container(
                    width: size.width,
                    margin: const EdgeInsets.only(bottom: 15),
                    child: Image.asset('assets/abstract.png', height: 433, width: 304),

                  ),

                  const SizedBox(
                    width:304, height: 80,
                    child: Text(
                      'Abstract painting is a form of art that emphasizes the use of colors, shapes, and gestural marks to convey emotions or ideas rather than a realistic representation of the world.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
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


