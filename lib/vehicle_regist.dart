import 'package:bike_app/main.dart';
import 'package:flutter/material.dart';

import 'cover_type.dart';

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
            'Vehicle Registration',
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
            height: 35,
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
                    'Enter Registration Number',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Colors.deepOrangeAccent,
                    ),
                  ),
                ),
                registNum,
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _cancelButton(),
                        SizedBox(
                          width: 10,
                        ),
                        _nextButton(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _cancelButton() {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            Navigator.pop(context);
          });
        },
        child: IntrinsicWidth(
          stepWidth: 100,
          child: Center(
            child: Text(
              'Cancel',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: Colors.grey,
        ),
      ),
    );
  }

  Widget _nextButton() {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CoverType(),
              ),
            );
          });
        },
        child: IntrinsicWidth(
          stepWidth: 170,
          child: Center(
            child: Text(
              'Next',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: Colors.lightGreen,
        ),
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
    autofocus: true,
    keyboardType: TextInputType.phone,
    decoration: InputDecoration(
      counterText: '',
      isDense: true,
      enabled: true,
    ),
    maxLength: 15,
    maxLines: 1,
  ),
);
