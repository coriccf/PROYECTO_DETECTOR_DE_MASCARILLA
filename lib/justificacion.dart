import 'package:flutter/material.dart';

import 'mascarillas.dart';
class Justificacion extends StatefulWidget {
  @override
  _JustificacionState createState() => _JustificacionState();
}

class _JustificacionState extends State<Justificacion> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text("Justificacion"),
        ),

        body: Center(

          child: Column(
            children: [
              Image.asset("imagen/barrera.png",
                width: 200,
                height: 200,

              ),

              Text("\n\n\nEl uso de mascarillas en población general puede servir como un medio de control de la fuente de infección al reducir la propagación en la comunidad, ya que se reduce la excreción de gotas respiratorias de individuos infectados que aún no han desarrollado síntomas o que permanecen asintomáticos\n\n\n",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              FlatButton(
                child: Text("Regresar",style: TextStyle(fontSize: 20),
                ),
                textColor: Colors.white,
                color: Colors.orangeAccent,
                splashColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: EdgeInsets.symmetric(horizontal: 30),
                disabledColor: Colors.grey,
                disabledTextColor: Colors.purple,
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Mascarillas()),
                  );
                },
              )



            ],
          ),
        ),
      ) ,
      debugShowCheckedModeBanner: false,
    );
  }
}
