import 'package:bike_app/vehicle_regist.dart';
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
          backgroundColor: Colors.deepOrangeAccent,
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
              Navigator.of(context).popUntil((route) => route.isFirst);
            },
          ),
        ),
        body: Vehicle(),
      ),
    );
  }
}

class Vehicle extends StatefulWidget {
  const Vehicle({Key? key}) : super(key: key);

  @override
  _VehicleState createState() => _VehicleState();
}

class _VehicleState extends State<Vehicle> {
  final List<Vehicles> vehicleList = [
    Vehicles(
      "Private vehicle",
      "Private vehicle for personal use only",
    ),
    Vehicles(
      "Boda-Boda",
      "Motorcycle for carrying passengers",
    ),
    Vehicles(
      "Tuk-Tuk",
      "Motorcycle for carrying passengers",
    ),
    Vehicles(
      "PSV Matatu or Bus",
      "PVS Matatu and busses",
    ),
  ];
  List images = [
    "assets/images/car.png",
    'assets/images/motorbike.png',
    'assets/images/tuk-tuk.png',
    'assets/images/bus.png'
  ];

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
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Card(
          child: InkWell(
            splashColor: Colors.deepOrangeAccent.withAlpha(30),
            onTap: () {
              setState(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => VehicleRegister(),
                  ),
                );
              });
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: Image.asset(
                    images[index],
                    width: 70,
                    height: 70,
                    fit: BoxFit.contain,
                  ),
                  title: Text(
                    vehicles.titleTex,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  subtitle: Text(
                    vehicles.subtitle,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
