import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class GeoLocator extends StatefulWidget {
  const GeoLocator({super.key});

  @override
  State<GeoLocator> createState() => _GeoLocatorState();
}

class _GeoLocatorState extends State<GeoLocator> {
  String message = '';

  void getLocation() async {
    Position position = await Geolocator.getCurrentPosition();
    print(position.latitude.toString());
    print(position.longitude.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GeoLocator"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                getLocation();
              },
              child: const Text("Get Location"),
            ),
            Text(message)
          ],
        ),
      ),
    );
  }
}
