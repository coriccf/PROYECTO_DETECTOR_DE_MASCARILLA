import 'dart:math';

import 'package:flutter/material.dart';
class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int pos=1%2;


  @override
  Widget build(BuildContext context) {
    List<double>vAng=[0,2*pi];
    var screen = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text('MENU DE OPCIONES'),
        ),

        backgroundColor: Colors.white,
        body:Stack(
          children: <Widget>[

            Center(
              child:TweenAnimationBuilder(
                duration: Duration(milliseconds: 2000),
                tween: Tween<double>(begin: vAng[pos], end: vAng[(pos+1)%2]),
                builder: (BuildContext context, double value, Widget child) {
                  return Transform.rotate(
                    angle: value,
                    child: AnimatedContainer(
                      height: 400,
                      width: 400,
                      duration:Duration(milliseconds: 1000),
                      //color: Colors.redAccent,
                      child: Stack(
                        children: <Widget>[
                          widGen(0,-1,180,180,Colors.lightBlueAccent[100],Colors.blue[900],'CONSEJOS','/uno'),
                          widGen(1,0,180,180,Colors.lightGreen[100],Colors.green[900],'MASCARILLAS','/dos'),
                          widGen(0,1,180,180,Colors.orangeAccent[100],Colors.orange[900],'INFORMACION\nDE APP','/tres'),
                          widGen(-1,0,180,180,Colors.pinkAccent[100],Colors.pink[900],'DETECTOR DE\nMASCARILLA','/cuatro'),
                        ],
                      ),

                    ),
                  );
                },
              ),
            ),


          ],
        ) ,


      ),
      debugShowCheckedModeBanner: false,
    );
  }
  Widget widGen(double x,double y,double w,double h,col1,col2,msg,numero){
    return Align(
      alignment: Alignment(x,y),
      child: Container(
        width: w,
        height:h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            gradient: RadialGradient(colors: [col1,col2])
        ),
        child: FlatButton(
            child: Text(msg.toString(), style: TextStyle(fontSize: 20,color: Colors.white),),
            onPressed: () {
              Navigator.pushNamed(context, numero);
            }),

      ),
    );
  }
}
