import 'package:bike_app/config/strings.dart';
import 'package:bike_app/forgot_password.dart';
import 'package:bike_app/insurance.dart';
import 'package:bike_app/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent,
          title: Text(
            loginText,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Roboto',
              fontSize: 18,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.17,
            ),
          ),
          leading: IconButton(
            iconSize: 24,
            onPressed: () {},
            icon: Container(
              child: Image(
                image: AssetImage(
                  'assets/images/bar.png',
                ),
                fit: BoxFit.cover,
              ),
              height: 24,
              width: 24,
            ),
          ),
        ),
        body: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PersistentLogo(),
                SizedBox(
                  height: 45,
                ),
                PhoneField(),
                SizedBox(
                  height: 10,
                ),
                PasswordField(),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lightGreen,
                  ),
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => InsuranceType(),
                        ),
                      );
                    });
                  },
                  child: IntrinsicWidth(
                    child: Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    stepHeight: 50,
                    stepWidth: 340,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ForgotPassword()),
                      );
                    });
                  },
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrangeAccent,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class PhoneField extends StatelessWidget {
  const PhoneField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 25,
          right: 20,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Phone No.',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrangeAccent,
                  ),
                ),
              ],
            ),
            TextField(
              decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.only(
                  top: 20,
                  //left: 20,
                ),
                enabled: true,
                hintText: '700-7000-700',
                hintStyle: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Roboto',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                alignLabelWithHint: true,
                prefix: Container(
                  padding: EdgeInsets.only(
                    right: 10,
                    bottom: 3,
                  ),
                  child: Card(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: Image.asset(
                            'assets/images/kenya.png',
                            width: 35,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(18)),
                          ),
                        ),
                        Text(
                          '+254',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Roboto',
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    color: Color.fromRGBO(228, 236, 216, 100),
                  ),
                  width: 105,
                  height: 40,
                ),
              ),
              keyboardType: TextInputType.phone,
              maxLength: 10,
              maxLines: 1,
            ),
          ],
        ),
      ),
    );
  }
}

class PasswordField extends StatelessWidget {
  const PasswordField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 25,
          right: 20,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Password',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrangeAccent,
                  ),
                ),
              ],
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                //isDense: true,
                contentPadding: EdgeInsets.only(
                  top: 10,
                  left: 5,
                ),
                enabled: true,
                hintText: '********',
                hintStyle: TextStyle(
                  letterSpacing: 5,
                  color: Colors.black,
                  fontFamily: 'Roboto',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                alignLabelWithHint: true,
              ),
              keyboardType: TextInputType.visiblePassword,
              maxLength: 10,
              maxLines: 1,
            ),
          ],
        ),
      ),
    );
  }
}
