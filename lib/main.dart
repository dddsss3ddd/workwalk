import 'package:flutter/material.dart';
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
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainMap(
        defaultMap: MapWidget(
          fps: 60,
        ),
      ),
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
