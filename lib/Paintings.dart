import 'package:flutter/material.dart';
import 'package:tiktoklikescroller/tiktoklikescroller.dart';

class Genre extends StatelessWidget {
  const Genre({Key? key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> paintings = [Abstract(), Baroque(), Expressionism(),
    Impressionism(), Neoclassicism(), Popart(), Realism(), Rennaissance(),
    Surrealism()];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: TikTokStyleFullPageScroller(
          contentSize: paintings.length,
          swipeVelocityThreshold: 2000,
          animationDuration: const Duration(milliseconds: 300),
          builder: (BuildContext context, int index) {
            return Container(
              child: paintings[index],
            );
          },
        ),
      ),
    );
  }

  Widget Abstract() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(18, 18, 18, 18),
      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 55),
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
            const SizedBox(height: 20),
            const SizedBox(
              width: 304,
              child: Text(
                'Abstract (20th Century)',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: 304,
              height: 433,
              margin: const EdgeInsets.only(bottom: 15),
              child: Image.asset('assets/abstract.png'),
            ),
            const SizedBox(
              width: 304,
              height: 80,
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
        ),
      ),
    );
  }

  Widget Baroque() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(18, 18, 18, 18),
      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 100),
            const SizedBox(
              width: 304,
              child: Text(
                'Baroque (20th Century)',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
             width: 304,
              height: 433,
              margin: const EdgeInsets.only(bottom: 15),
              child: Image.asset('assets/baroque.jpg',
                fit: BoxFit.fitHeight,),
            ),
            const SizedBox(
              width: 304,
              height: 130,
              child: Text(
                'Baroque painting is characterized by its dramatic, theatrical, and realistic style. Baroque artists often used strong contrasts of light and dark, bold colors, and exaggerated movement to create a sense of drama and excitement. They also frequently depicted religious themes, mythology, and history.',
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
                'Expressionism (20th Century)',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: 304,
              height: 433,
              margin: const EdgeInsets.only(bottom: 15),
              child: Image.asset('assets/expressionism.jpg'
                , fit: BoxFit.fitHeight),
            ),
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
                'Impressionism (20th Century)',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: 304,
              height: 433,
              margin: const EdgeInsets.only(bottom: 15),
              child: Image.asset('assets/impressionism.jpeg' , fit: BoxFit.fitHeight),
            ),
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

  Widget Neoclassicism() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(18, 18, 18, 18),
      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 100),
            const SizedBox(
              width: 304,
              child: Text(
                'Neoclassicism (20th Century)',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: 304,
              height: 433,
              margin: const EdgeInsets.only(bottom: 15),
              child: Image.asset('assets/neoclassicism.jpg' , fit: BoxFit.fitHeight),
            ),
            const SizedBox(
              width: 304,
              height: 140,
              child: Text(
                'Neoclassicism is a style of painting that emphasizes rational order, clarity, and balance. Neoclassical painters often used idealized forms and classical references to create a sense of harmony and beauty. They were interested in reviving the ideals of classical art and often depicted subjects such as historical events, mythology, and allegorical figures.',
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

  Widget Popart() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(18, 18, 18, 18),
      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 120),
            const SizedBox(
              width: 304,
              child: Text(
                'Popart (20th Century)',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: 304,
              height: 433,
              margin: const EdgeInsets.only(bottom: 15),
              child: Image.asset('assets/popart.jpg' , fit: BoxFit.fitHeight),
            ),
            const SizedBox(
              width: 304,
              height: 80,
              child: Text(
                'Pop Art is a style of painting that celebrates pop culture, commercialism, and consumerism. Pop artists often use bold colors, simplified forms, and mass-produced images to create a sense of irony and humor. They are interested in exploring the impact of popular culture on our lives and often depict subjects such as celebrities, advertising, and everyday objects.',
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
                'Realism (20th Century)',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: 304,
              height: 433,
              margin: const EdgeInsets.only(bottom: 15),
              child: Image.asset('assets/realism.jpg' , fit: BoxFit.fitHeight),
            ),
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
                'Rennaissance (20th Century)',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: 304,
              height: 433,
              margin: const EdgeInsets.only(bottom: 15),
              child: Image.asset('assets/renaissance.jpeg' , fit: BoxFit.fitHeight),
            ),
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
                'Surrealism (20th Century)',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: 304,
              height: 433,
              margin: const EdgeInsets.only(bottom: 15),
              child: Image.asset('assets/surrealism.jpg' , fit: BoxFit.fitHeight),
            ),
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


