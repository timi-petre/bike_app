import 'package:bike_app/config/strings.dart';
import 'package:bike_app/forgot_password.dart';
import 'package:bike_app/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    precacheImage(AssetImage("assets/images/test1.png"), context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        focusColor: Colors.white,
        backgroundColor: Colors.white,
        scaffoldBackgroundColor: Colors.lightGreen[50],
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LoginPage(),
      ),
    );
  }
}

class PersistentLogo extends StatelessWidget {
  const PersistentLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Image(
                image: AssetImage('assets/images/test1.png'),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Boda-boda Insurance',
                style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
