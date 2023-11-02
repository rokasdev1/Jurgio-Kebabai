import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapWidget extends StatelessWidget {
  const GoogleMapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      initialCameraPosition: const CameraPosition(
        target: LatLng(54.8985, 23.9036),
        zoom: 11,
      ),
      onMapCreated: (controller) {},
      markers: {
        const Marker(
          markerId: MarkerId('Jurgio Kebabinė'),
          position: LatLng(54.562981, 23.332874),
        ),
        const Marker(
          markerId: MarkerId('Jurgio Kebabinė'),
          position: LatLng(54.645352, 23.032738),
        ),
        const Marker(
          markerId: MarkerId('Jurgio Kebabinė'),
          position: LatLng(54.895648, 23.913884),
        ),
        const Marker(
          markerId: MarkerId('Jurgio Kebabinė'),
          position: LatLng(54.927042, 23.900830),
        ),
      },
    );
  }
}
