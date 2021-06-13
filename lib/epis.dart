import 'package:flutter/material.dart';

import 'mascarillas.dart';
class Epi extends StatefulWidget {
  @override
  _EpiState createState() => _EpiState();
}

class _EpiState extends State<Epi> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text("Epis"),
        ),

        body: Center(

          child: Column(
            children: [
              Image.asset("imagen/epis.png",
                width: 200,
                height: 200,

              ),

              Text("\n\n\nRecomendadas para personal sanitario o personal que vaya a entrar en contacto estrecho con la respiración del paciente. Actúan de barrera de protección en ambos sentidos. Si lo indica con una “R” son reutilizables. Si pone “NR”, no lo son \n\n\n",
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
