import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mascarilla_detector/caseras.dart';
import 'package:mascarilla_detector/epis.dart';
import 'package:mascarilla_detector/higienicas.dart';
import 'package:mascarilla_detector/justificacion.dart';
import 'package:mascarilla_detector/quirurgicas.dart';
import 'package:mascarilla_detector/reutilizables.dart';

import 'Menu.dart';


class Mascarillas extends StatefulWidget {
  @override
  _MascarillasState createState() => _MascarillasState();
}

class _MascarillasState extends State<Mascarillas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.blueGrey[100],
          appBar: AppBar(
            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: const Icon(Icons.home_rounded),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Menu()),
                    );
                  },
                  tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                );
              },
            ),
            backgroundColor: Colors.redAccent,
            title: Text('Informacion Mascarillas'),
          ),
          body: Container(
              padding: EdgeInsets.all(30.0),
              child: GridView.count(
                  crossAxisCount: 2,
                  children: <Widget>[
                    boton("HIGIENICAS","imagen/higienica.png",Higienicas()),
                    boton("QUIRURGICAS","imagen/quirurgica.jpg",Quirurgicas()),
                    boton("EPIS","imagen/epis.png",Epi()),
                    boton("CASERAS","imagen/casera.png",Caseras()),
                    boton("REUTILIZABLES","imagen/reutili.png",Reutilizables()),
                    boton("JUSTIFICACION","imagen/barrera.png",Justificacion()),

                  ]

              )

          )


      );


  }
  Widget boton(String t,String i,ruta) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ruta),
            );
          },
          splashColor:Colors.green ,
          child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                Image.asset(i,
                  width: 50,
                  height: 50,
                ),

                  Text(t, style: new TextStyle(fontSize: 17.0)),
                ],
              ),
          ),


      ),

    );
  }
}

