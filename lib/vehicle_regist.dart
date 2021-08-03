import 'package:bike_app/main.dart';
import 'package:flutter/material.dart';

class VehicleRegister extends StatelessWidget {
  const VehicleRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent,
          iconTheme: IconThemeData(color: Colors.white),
          title: const Text(
            'Home',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Roboto',
              fontSize: 18,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.17,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Icon(Icons.person),
            ),
          ],
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: RegisterVeh(),
      ),
    );
  }
}

class RegisterVeh extends StatefulWidget {
  const RegisterVeh({Key? key}) : super(key: key);

  @override
  _RegisterVehState createState() => _RegisterVehState();
}

class _RegisterVehState extends State<RegisterVeh> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          logo,
          SizedBox(
            height: 40,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Text(
                    'Phone No.',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrangeAccent,
                    ),
                  ),
                ),
                registNum,
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Column logo = Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    PersistentLogo(),
  ],
);

Padding registNum = Padding(
  padding: const EdgeInsets.only(left: 20, right: 20),
  child: TextField(
    keyboardType: TextInputType.phone,
    decoration: InputDecoration(
      enabled: true,
    ),
  ),
);
