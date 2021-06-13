import 'package:flutter/material.dart';

import 'mascarillas.dart';
class Quirurgicas extends StatefulWidget {
  @override
  _QuirurgicasState createState() => _QuirurgicasState();
}

class _QuirurgicasState extends State<Quirurgicas> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text("Quirurgicas"),
        ),

        body: Center(

          child: Column(
            children: [
              Image.asset("imagen/quirurgica.jpg",
                width: 200,
                height: 200,

              ),

              Text("\n\n\nFueron diseñadas inicialmente para que, durante una operación quirúrgica, el médico no contaminara al enfermo y se protegiera de salpicaduras o sangre. Por tanto, son una protección de dentro hacia afuera (como las higiénicas), pero de fuera hacia adentro solo ofrecen una protección parcial, no total. Lo normal es que no se usen más de 4 horas. No las hay reutilizables \n\n\n",
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
