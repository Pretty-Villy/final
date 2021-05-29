import 'package:flutter/material.dart';
import 'HomeScreen.dart';
import 'AuthScreen.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LaunchState();
  }
}

class LaunchState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: initScreen(context),
    );
  }

  initScreen(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 20, top: 70),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.keyboard_backspace,
              size: 20.0,
              color: Color(0xFFC5CCD6),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20, top: 120),
          child: Text(
            'Login',
            style: TextStyle(
                fontSize: 80, color: Colors.black, fontFamily: 'Oswald'),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20, top: 40, right: 20),
          child: TextFormField(
            decoration: InputDecoration(
              labelText: "Email",
              border: OutlineInputBorder(),
            ),
            minLines: 1,
            keyboardType: TextInputType.emailAddress,
            autofocus: false,
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20, top: 20, right: 20),
          child: TextFormField(
            decoration: InputDecoration(
              labelText: "Password",
              border: OutlineInputBorder(),
            ),
            minLines: 1,
            keyboardType: TextInputType.text,
            autofocus: false,
            obscureText: true,
          ),
        ),
        Center(
          child: Container(
            margin: EdgeInsets.only(top: 130),
            child: RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(70.0)),
              padding: EdgeInsets.all(1.0),
              child: Ink(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [new Color(0xFFDA535A), new Color(0xFFDB5FAA)],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(5.0)),
                child: Container(
                  constraints: BoxConstraints(maxWidth: 390.0, minHeight: 60.0),
                  alignment: Alignment.center,
                  child: const Text(
                    'Login',
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ),
        Center(
          child: Container(
            padding: EdgeInsets.only(bottom: 30.0),
            margin: EdgeInsets.only(top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Don't have an account?"),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignUpScreen()));
                  },
                  child: Text(
                    ' SignUp',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
