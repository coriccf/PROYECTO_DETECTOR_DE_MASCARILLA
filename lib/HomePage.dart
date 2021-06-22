import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:mascarilla_detector/main.dart';
import 'package:tflite/tflite.dart';

import 'package:just_audio/just_audio.dart';



class HomePage extends StatefulWidget {


  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Define required instans
  CameraImage cameraImage;
  CameraController cameraController;
  //Define required varaibles
  bool isworking = false;
  String result = ' ';

  initCamera()
  {
    cameraController =  CameraController(camera[0], ResolutionPreset.medium);
    cameraController.initialize().then((value){
      if(!mounted)
      {
        return;
      }
      setState(() {
        cameraController.startImageStream((imageFromStream)
        {
          if(!isworking)
          {
            isworking = true;
            cameraImage= imageFromStream;
            runModelOnFrame();


          }
        });
      });
    });
  }

  runModelOnFrame()async{
    if(cameraImage != null){
      var recognitions= await Tflite.runModelOnFrame(
          bytesList: cameraImage.planes.map((plane){
            return plane.bytes;
          }).toList(),
          imageHeight: cameraImage.height,
          imageWidth: cameraImage.width,
          imageMean: 127.5,
          imageStd: 127.5,
          rotation: 90,
          numResults: 1,
          threshold: 0.1,
          asynch: true

      );
      result=" ";
      recognitions.forEach((response) {
        result += response['label']+"\n";



      });
      setState(() {
        //result;
        print(result);


      });
      isworking=false;
    }

  }
  loadModel() async{
    await Tflite.loadModel(model:"modelo/model.tflite",
        labels:"modelo/labels.txt");
    if(result.compareTo("SIN MASCARILLA")!=0){
      await player.setAsset('modelo/positivo.mp3');
      player.play();
    }
    if(result.compareTo("CON MASCARILLA")!=0){
      await player.setAsset('modelo/negativo.mp3');
      player.play();
    }
  }
  AudioPlayer player;

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement setState
    super.initState();
    player = AudioPlayer();
    initCamera();
    loadModel();

  }



  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.redAccent,
            title: result.isEmpty ? Text('Enfoque el rostro'):
            Padding(padding: EdgeInsets.only(top: 30.0),
              child: Text(result,
                style: TextStyle(fontSize: 25),
                textAlign: TextAlign.center,),),
            centerTitle: true,
          ),

          body: Container(
              child: (!cameraController.value.isInitialized)
                  ?Container()
                  : Align(
                alignment: Alignment.center,
                child: AspectRatio(
                  aspectRatio: cameraController.value.aspectRatio,
                  child: CameraPreview(cameraController),


                ),
              )
          ),
          backgroundColor: Colors.black,

        ),

      ),
      debugShowCheckedModeBanner: false,
    );
  }

}