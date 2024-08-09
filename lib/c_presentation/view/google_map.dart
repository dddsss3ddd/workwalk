import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapSample extends StatefulWidget {
  const GoogleMapSample({super.key});

  @override
  State<GoogleMapSample> createState() => GoogleMapSampleState();
}

class GoogleMapSampleState extends State<GoogleMapSample> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  // static const CameraPosition _kGooglePlex = CameraPosition(
  //   target: LatLng(37.511, 127.0664),
  //   zoom: 18.4746,
  // );

  static const CameraPosition _kHAE = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.511, 127.0664),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: _kHAE,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
          Text(
            "GO! FluFi! :-) ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              backgroundColor: Colors.blueAccent,
              fontSize: 20,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goBackToHAE,
        label: const Text('Back to HAE!'),
        icon: const Icon(Icons.work_outline),
      ),
    );
  }

  Future<void> _goBackToHAE() async {
    final GoogleMapController controller = await _controller.future;
    await controller.animateCamera(CameraUpdate.newCameraPosition(_kHAE));
  }
}
