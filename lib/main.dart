import 'package:flutter/material.dart';
import 'package:mascarilla_detector/HomePage.dart';
import 'package:mascarilla_detector/Menu.dart';
import 'package:mascarilla_detector/SplashScreenPage.dart';
import 'package:camera/camera.dart';
import 'package:mascarilla_detector/consejos.dart';
import 'package:mascarilla_detector/infoapp.dart';
import 'package:mascarilla_detector/mascarillas.dart';
import 'dart:async';

import 'animaciones.dart';

List<CameraDescription>camera;

Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  camera = await availableCameras();// que se adapte a la camara del dispositivo

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (RouteSettings settings){
        switch(settings.name){
          case '/':
            return MaterialPageRoute(builder: (context)=>Menu());
            break;
          case '/uno':
            return RotationRoute(page: Consejos());
            break;
           case '/dos':
            return ScaleRotateRoute(page: Mascarillas());
            break;
          case '/tres':
            return RotationRoute(page: Informacion() );
            break;
          case '/cuatro':
            return SlideRoute(page: HomePage() );
            break;

        }
      },

      title: 'Detector de Mascarilla',
      home: SplashScreenPage(),
      debugShowCheckedModeBanner: false,//para que no aparezca la tirita roja de la derecha
    );
  }
}


