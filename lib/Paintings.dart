import 'package:flutter/material.dart';
import 'package:tiktoklikescroller/tiktoklikescroller.dart';

class Genre extends StatelessWidget {
   const Genre({Key? key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> paintings = [Baroque(), Expressionism(),
    Impressionism(), Realism(), Rennaissance(),
    Surrealism()];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
         body: Scrollbar(
          controller: ScrollController(),
          thumbVisibility: true,
          trackVisibility: true,
          thickness: 8,
          child: TikTokStyleFullPageScroller(
          contentSize: paintings.length,
          swipeVelocityThreshold: 2000,
          animationDuration: const Duration(milliseconds: 300),
          builder: (BuildContext context, int index) {
            return Container(
              child: paintings[index],

            );
          },
        ),

        )
      ),
    );
  }


  Widget Baroque() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(18, 18, 18, 18),
      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 55),
            const Text(
              'Paintings',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 30,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              'List of the paintings\n the app can identify.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 20),
            const SizedBox(
              width: 304,
              child: Text(
                'Baroque',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            const SizedBox(height: 10),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child:
              Image.asset('assets/baroque.jpg', width: 304,
                fit: BoxFit.fitHeight, height: 433,),
            ),
            const SizedBox(height: 15),
            const SizedBox(
              width: 304,
              height: 100,
              child: Text(
                'Baroque painting is marked by its dramatic, realistic style featuring strong light-dark contrasts, bold colors, and exaggerated movement for heightened drama. Artists often portrayed religious themes, mythology, and historical subjects.',
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
        ),
      ),
    );
  }

  Widget Expressionism() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(18, 18, 18, 18),
      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 100),
            const SizedBox(
              width: 304,
              child: Text(
                'Expressionism',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            const SizedBox(height: 10),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child:
              Image.asset('assets/expressionism.jpg', width: 304,
                fit: BoxFit.fitHeight, height: 433,),
            ),
            const SizedBox(height: 15),
            const SizedBox(
              width: 304,
              height: 145,
              child: Text(
                'Expressionism is a style of painting that emphasizes the expression of emotion rather than the accurate depiction of reality. Expressionist painters often use bold, exaggerated colors and distorted forms to convey their feelings. They are interested in exploring the inner workings of the human psyche and often depict subjects such as anxiety, alienation, and despair.',
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
        ),
      ),
    );
  }

  Widget Impressionism() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(18, 18, 18, 18),
      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 115),
            const SizedBox(
              width: 304,
              child: Text(
                'Impressionism',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            const SizedBox(height: 10),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child:
              Image.asset('assets/impressionism.jpeg', width: 304,
                fit: BoxFit.fill, height: 433,),
            ),
            const SizedBox(height: 15),
            const SizedBox(
              width: 304,
              height: 80,
              child: Text(
                'Impressionism is a style of painting that emphasizes the fleeting effects of light and atmosphere. Impressionist painters often use short, quick strokes to capture the changing light and colors of the world around them. They are interested in capturing the immediate experience of the world and often depict subjects such as landscapes, cityscapes, and people in everyday life.',
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
        ),
      ),
    );
  }


  Widget Realism() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(18, 18, 18, 18),
      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 100),
            const SizedBox(
              width: 304,
              child: Text(
                'Realism',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            const SizedBox(height: 10),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child:
              Image.asset('assets/realism.jpg', width: 304,
                fit: BoxFit.fitHeight, height: 433,),
            ),
            const SizedBox(height: 15),
            const SizedBox(
              width: 304,
              height: 140,
              child: Text(
                'Realism is a style of painting that emphasizes the accurate depiction of reality. Realist painters often use smooth, precise brushstrokes and realistic colors to create a sense of depth and perspective. They are interested in depicting the world as it is and often depict subjects such as everyday life, social commentary, and the working class.',
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
        ),
      ),
    );
  }

  Widget Rennaissance() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(18, 18, 18, 18),
      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 115),
            const SizedBox(
              width: 304,
              child: Text(
                'Rennaissance',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            const SizedBox(height: 10),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child:
              Image.asset('assets/renaissance.jpeg', width: 304,
                fit: BoxFit.fill, height: 433,),
            ),
            const SizedBox(height: 15),
            const SizedBox(
              width: 304,
              height: 140,
              child: Text(
                'Renaissance painting is characterized by its humanistic, realistic, and classical style. Renaissance painters were interested in rediscovering the ideals of classical art and often depicted subjects such as religious themes, mythology, and history. ',
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
        ),
      ),
    );
  }

  Widget Surrealism() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(18, 18, 18, 18),
      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 100),
            const SizedBox(
              width: 304,
              child: Text(
                'Surrealism',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            const SizedBox(height: 10),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child:
              Image.asset('assets/surrealism.jpg', width: 304,
                fit: BoxFit.fitHeight, height: 433,),
            ),
            const SizedBox(height: 15),
            const SizedBox(
              width: 304,
              height: 130,
              child: Text(
                'Surrealism is a style of painting that explores the depths of the subconscious mind through dreamlike and fantastical imagery. Surrealist artists often use illogical juxtapositions, unexpected combinations of objects, and symbolic imagery to create a sense of strangeness and wonder. They are interested in exploring the hidden workings of the mind and often depict subjects such as dreams, nightmares, and the human imagination.',
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
        ),
      ),
    );
  }
}


/*Size size = MediaQuery.of(context).size;
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
}*

     */


