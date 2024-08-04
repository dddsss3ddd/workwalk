import 'package:flutter/material.dart';
import 'package:workwalk/c_presentation/view/explore_bar.dart';
import 'package:workwalk/c_presentation/view/map_widget.dart';

class MainMap extends StatelessWidget {
  final MapWidget defaultMap;
  const MainMap({super.key, required this.defaultMap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            defaultMap,
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ExploreBar(
                  linkedMap: defaultMap,
                ),
              ],
            ),
          ],
        ));
  }
}
