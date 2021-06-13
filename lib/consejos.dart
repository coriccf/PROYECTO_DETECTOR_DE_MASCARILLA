import 'package:flutter/material.dart';
import 'package:mascarilla_detector/Menu.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
class Consejos extends StatelessWidget {
  final imageList = [
    'imagen/1.jfif',
    'imagen/2.jfif',
    'imagen/3.jfif',
    'imagen/4.jfif',
    'imagen/5.jfif',
    'imagen/6.jfif',
    'imagen/7.jfif',
    'imagen/8.jfif',
    'imagen/9.jfif',
    'imagen/10.jfif',
    'imagen/11.jfif',
    'imagen/12.jfif',
    'imagen/13.jfif',


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: Text('Consejos'),
      ),
      body: Container(
        child: PhotoViewGallery.builder(
          itemCount: imageList.length,
          builder: (context, index) {
            return PhotoViewGalleryPageOptions(
              imageProvider: AssetImage(
                imageList[index],
              ),
              minScale: PhotoViewComputedScale.contained * 0.8,
              maxScale: PhotoViewComputedScale.covered * 2,
            );
          },
          scrollPhysics: BouncingScrollPhysics(),
          backgroundDecoration: BoxDecoration(),
          enableRotation: true,
        ),
      ),
    );
  }
}