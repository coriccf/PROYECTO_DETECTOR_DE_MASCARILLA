import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'mascarillas.dart';
class Caseras extends StatefulWidget {
  @override
  _CaserasState createState() => _CaserasState();
}

class _CaserasState extends State<Caseras> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text("Antipolvo o Caseras"),
        ),

        body: Center(

          child: Column(
            children: [
              Image.asset("imagen/casera.png",
                width: 200,
                height: 200,

              ),

              Text("\n\n\nNo tienen la eficacia de protección exigida para obtener el certificado de protección bacteriana (superior al 90%) o de respirabilidad. Una opción alternativa es colocar un filtro renovable en el interior, con lo que la mascarilla se convierte en la funda que recubre el filtro homologado que sí actúa como barrera\n\n\n",
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
