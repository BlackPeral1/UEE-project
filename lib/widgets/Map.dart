// import 'package:flutter/material.dart';
// import 'package:flutter_map/flutter_map.dart'; // Suitable for most situations
// import 'package:flutter_map/plugin_api.dart';
// import 'package:latlong2/latlong.dart';

// class Map extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return FlutterMap(
//       options: MapOptions(
//         center: LatLng(51.509364, -0.128928),
//         zoom: 9.2,
//       ),
//       nonRotatedChildren: [
//         AttributionWidget.defaultWidget(
//           source: 'OpenStreetMap contributors',
//           onSourceTapped: null,
//         ),
//       ],
//       children: [
//         TileLayer(
//           urlTemplate:
//               'https://maps.googleapis.com/maps/api/geocode/json?latlng={x},{y}&key=AIzaSyAePk9SYfZTMpAJZ7pOutFK_ixi72CzS2I',
//           userAgentPackageName: 'com.example.app',
//         ),
//       ],
//     );
//   }
// }
