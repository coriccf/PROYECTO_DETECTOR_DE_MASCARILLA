import 'package:flutter/material.dart';
import 'package:mascarilla_detector/mascarillas.dart';
class Higienicas extends StatefulWidget {
  @override
  _HigienicasState createState() => _HigienicasState();
}

class _HigienicasState extends State<Higienicas> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text("Higienicas"),
        ),

        body: Center(

          child: Column(
            children: [
              Image.asset("imagen/higienica.png",
                width: 200,
                height: 200,

              ),

              Text("\n\n\nSon una barrera para la transmisión de agentes infecciosos. Protegen desde dentro hacia afuera. Por lo tanto, si se acerca alguien que no lleva mascarilla y tiene Covid-19, la persona que sí lleva la mascarilla puede ser contagiada. Son, pues, mascarillas solidarias. Si todo el mundo las lleva, se evita la propagación del virus. Las hay reutilizables (UNE 0065-2020) y no reutilizables (UNE 0064-2020)\n\n\n",
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
