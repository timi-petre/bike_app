import 'package:flutter/material.dart';

import 'config/Vehicle.dart';

class VehicleUse extends StatelessWidget {
  const VehicleUse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          title: const Text(
            'Select a vehicle use',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Roboto',
              fontSize: 18,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.17,
            ),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Vehicle(),
      ),
    );
  }
}

class Vehicle extends StatelessWidget {
  final List<Vehicles> vehicleList = [
    Vehicles(
      "da",
      "subtitle",
    ),
    Vehicles(
      "da",
      "subtitle",
    ),
    Vehicles(
      "da",
      "subtitle",
    ),
    Vehicles(
      "da",
      "subtitle",
    ),
  ];

  //const Vehicle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: vehicleList.length,
        itemBuilder: (context, int index) => buildVehicleCard(context, index),
      ),
    );
  }

  Widget buildVehicleCard(context, int index) {
    final vehicles = vehicleList[index];
    return Container(
      child: Card(
        child: Column(
          children: [
            Text(vehicles.titleTex),
            Text(vehicles.subtitle),
          ],
        ),
      ),
    );
  }
}
