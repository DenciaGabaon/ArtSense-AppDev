import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'HomePage.dart';
import 'Camera.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const ArtSense());
}

class ArtSense extends StatelessWidget {
  const ArtSense({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ArtSense Flash Screen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Montserrat'),
      routes: {
        '/second': (context) => HomePage(),
        '/third': (context) => Camera()
        // Define a named route for SecondScreen
      },
      home: const MyWelcomePage(),
    );
  }
}


class MyWelcomePage extends StatefulWidget {
  const MyWelcomePage({Key? key}) : super(key: key);

  @override
  State<MyWelcomePage> createState() => _MyWelcomePageState();
}

class _MyWelcomePageState extends State<MyWelcomePage> {

  @override
  void initState() {
    super.initState();

    /// whenever your initialization is completed, remove the splash screen:
    Future.delayed(Duration(seconds: 5)).then((value) => {
      FlutterNativeSplash.remove()
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 219, 1),
      body: SafeArea( // SafeArea yung visible part ng screen.
        child: Container(
          padding: const EdgeInsets.fromLTRB(18, 18, 18, 18),
          child: Column(
            children: [
              Center(
                child: SizedBox(
                  width: 250,
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      text: 'Welcome to\n',
                      style: TextStyle(
                        fontSize: 25,
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'ArtSense!',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w800,
                            fontSize: 40,
                            color: Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Container(
                width: size.width,
                margin: const EdgeInsets.only(top: 25, bottom: 25),
                child: Image.asset('assets/Welcome1.png', height: 433, width: 304),

              ),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  'Identify art paintings \non which style category \nthey belong using camera \nor photos on your gallery.\n',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                width: 135,
                height: 46,

                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/second'); // Navigate to the SecondScreen
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(167, 160, 108, 1),
                    textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  child: const Text('Get Started',
                      style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
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




/*USES OF SYNTAX
SafeArea - yung visible na screen sa phone
sized box- pwede siya gawing distance between text inside a container.
          usually use for to create empty space to control dimensions between
          widgets.
child- only 1 widget
children- list of children/widget
container0- expets only 1 child.
column- pababa na widgets, children.
row- pa vertical list of widgets.
RichText- put diff styles sa i-isang textbox
* */