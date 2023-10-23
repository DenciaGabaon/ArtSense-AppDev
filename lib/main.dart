import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'WelcomePage.dart';

void main() {
  runApp(const ArtSense());
}

class ArtSense extends StatelessWidget {
  const ArtSense({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'ArtSense Flash Screen',
      home: Splash(),
      debugShowCheckedModeBanner: false,
    );
  }
}


class Splash extends StatefulWidget {
  const Splash ({super.key});

  @override
  State<Splash> createState() => _SplashState();
}


class _SplashState extends State<Splash> {
  
  //Specifies how long splash screen will display
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const WelcomePage()));
    super.initState();
    }
    );
  }


  @override
Widget build(BuildContext context){
  return Scaffold(
    backgroundColor: const Color.fromRGBO(103, 93, 80, 1),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/logo.png', height: 100,),
          const SizedBox(height: 30,),
          if(defaultTargetPlatform == TargetPlatform.android)
            const CupertinoActivityIndicator(
              color: Colors.white,
              radius: 20,
            )
            else
              const CircularProgressIndicator(
                color: Colors.white,
              )
        ],
      ),
    ),
  );
   }
}


