import 'package:flutter/material.dart';
import 'package:mascarilla_detector/Menu.dart';
class Informacion extends StatefulWidget {
  @override
  _InformacionState createState() => _InformacionState();
}

class _InformacionState extends State<Informacion> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text("Informacion de la Aplicacion"),
        ),

        body: Center(

          child: Column(
            children: [
              Image.asset("imagen/mascara-facial.png",
                width: 200,
                height: 200,
                
              ),

              Text("\n\n\n\n\n-PORQUE EL NOMBRE ESTAR BIEN ES SER CONSCIENTE?\nPorque con nuestra aplicacion queremos informar a la poblacion la importancia de seguir las normas de bioseguridad\n-DESARROLLADORES\nCarlos Camargo\nCorina Colque\nGeraldine Ibieta\n\n\n",
              style: TextStyle(
                  fontSize: 20,
              ),
              ),
              FlatButton(
                child: Text("Aceptar",style: TextStyle(fontSize: 20),
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
                    MaterialPageRoute(builder: (context) => Menu()),
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

