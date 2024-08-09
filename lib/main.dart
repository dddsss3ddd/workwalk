import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:workwalk/c_presentation/view/google_map.dart';
import 'package:workwalk/c_presentation/view/main_map.dart';
import 'package:workwalk/c_presentation/view/map_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: GoogleMapSample(),
      // home: const MainMap(
      //   defaultMap: MapWidget(
      //     fps: 60,
      //   ),
      // ),
    );
  }
}

class colors_saving {
  Color main = const Color.fromRGBO(0xF3, 0x81, 0x81, 1);
  Color c1 = const Color.fromRGBO(0xFC, 0xE3, 0x8A, 1);
  Color c2 = const Color.fromRGBO(0xEA, 0xFF, 0xD0, 1);
  Color c3 = const Color.fromRGBO(0x95, 0xD1, 0xE3, 1);
  Color alt1 = const Color.fromRGBO(0xF3, 0x81, 0x81, 1);
  Color alt2 = const Color.fromRGBO(0xF3, 0x81, 0x81, 1);
  Color alt3 = const Color.fromRGBO(0xF3, 0x81, 0x81, 1);
  Color alt4 = const Color.fromRGBO(0xF3, 0x81, 0x81, 1);
}
