import 'package:flutter/material.dart';

import 'mascarillas.dart';
class Reutilizables extends StatefulWidget {
  @override
  _ReutilizablesState createState() => _ReutilizablesState();
}

class _ReutilizablesState extends State<Reutilizables> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text("Reutilizables"),
        ),

        body: Center(

          child: Column(
            children: [
              Image.asset("imagen/reutili.png",
                width: 200,
                height: 200,

              ),

              Text("\n\n\nPueden emplearse diversos tipos de tejidos: poliéster/algodón, algodón 100% o poliamida. Para obtener el certificado de cumplimiento de la norma UNE 0065, deben tener una eficacia de protección bacteriana superior al 90% y una respirabilidad inferior a 60 Pa/cm2. Estas mascarillas se pueden lavar con detergente normal y agua a temperatura entre 60º y 90º (ciclo normal de lavadora)\n\n\n",
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
