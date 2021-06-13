import 'package:flutter/material.dart';
import 'package:mascarilla_detector/HomePage.dart';
import 'package:mascarilla_detector/Menu.dart';
import 'package:splashscreen/splashscreen.dart';


class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
     seconds: 6,
      navigateAfterSeconds: new Menu(),// a donde queremos ir despues de mostrar el splash screen
      title: Text('ESTAR BIEN ES SER CONSCIENTE',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.black
      ),
      ),
      image: Image.asset("imagen/mascara-facial.png"),
      photoSize: 170,
      backgroundColor:  Colors.white,
      loaderColor: Colors.redAccent,
      loadingText: Text('Aportando al cuidado de tu salud..... ',
      style: TextStyle(
        color: Colors.black,
        fontSize: 16.0

      ),
      textAlign: TextAlign.center,
      ),
    );
  }
}
