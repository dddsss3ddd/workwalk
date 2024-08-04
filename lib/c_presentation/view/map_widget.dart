import 'package:flutter/material.dart';

class MapWidget extends StatefulWidget {
  final int fps;
  final bool render;
  const MapWidget({super.key, this.fps = 60, this.render = true});

  //sample app parameter
  final String imageDir = 'assets/images/sample_map_image.png';
  //=========

  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  set fps(int nfps) {
    setState(() {
      fps = nfps;
    });
  }

  //sample app functions
  set imageDir(String newImage) {
    setState(() {
      imageDir = newImage;
    });
  }
  //===========

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/sample_map_image.png',
      fit: BoxFit.fill,
    );
  }
}
