import 'package:bike_app/config/strings.dart';
import 'package:bike_app/home_page.dart';
import 'package:bike_app/main.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Forgot Password',
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
                'images/bar.png',
              ),
              fit: BoxFit.cover,
            ),
            height: 24,
            width: 24,
          ),
        ),
      ),
      body: ValidatePassword(),
    );
  }
}

class ValidatePassword extends StatefulWidget {
  const ValidatePassword({Key? key}) : super(key: key);

  @override
  _ValidatePasswordState createState() => _ValidatePasswordState();
}

class _ValidatePasswordState extends State<ValidatePassword> {
  bool validatePressed = false;

  changeText() {
    setState(() {
      textNumber[0] = textNumber[1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          PersistentLogo(),
          SizedBox(
            height: 45,
          ),
          Container(
            width: 280,
            height: 100,
            child: Text(
              textNumber[0],
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            child: validatePressed ? CodeField() : PhoneField(),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.lightGreen,
            ),
            onPressed: () {
              setState(() {
                validatePressed = !validatePressed;
                changeText();
              });
            },
            child: IntrinsicWidth(
              child: Center(
                child: const Text(
                  'Validate',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              stepHeight: 50,
              stepWidth: 340,
            ),
          ),
        ],
      ),
    );
  }
}

class CodeField extends StatefulWidget {
  const CodeField({Key? key}) : super(key: key);

  @override
  _CodeFieldState createState() => _CodeFieldState();
}

class _CodeFieldState extends State<CodeField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 25,
          right: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(
                //isDense: true,
                contentPadding: EdgeInsets.only(
                  top: 20,
                ),
                //enabled: true,
                hintText: '12-34-56',
                hintStyle: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Roboto',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                alignLabelWithHint: true,
                counterText: '',
              ),
              keyboardType: TextInputType.phone,
              maxLength: 6,
              maxLines: 1,
            ),
            TextButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: Text("Code Sent!"),
                    content: Text("You should receive a code!"),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'Ok'),
                        child: const Text('Ok'),
                      ),
                    ],
                  ),
                );
              },
              child: Text(
                'Resend Code',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.solid,
                  decorationThickness: 2,
                  color: Colors.black,
                  fontFamily: 'Roboto',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
