import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

// ignore: camel_case_types
class map extends StatefulWidget {
  const map({super.key});

  @override
  State<map> createState() => _mapState();
}

// ignore: camel_case_types
class _mapState extends State<map> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Egypt Eye'),
        
        

      ),
      // ignore: prefer_const_constructors
      body: GoogleMap(
        initialCameraPosition: const CameraPosition(
          target: LatLng(37.42796133580664, -122.085749655962),
          ),
          ),


    );
  }
}