import 'package:flutter/material.dart';
import 'LoginScreen.dart';
import 'SignUpScreen.dart';

class AuthScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LaunchState();
  }
}

class LaunchState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: initScreen(context),
    );
  }

  initScreen(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 150),
          child: Center(
            child: Text(
              'BookTrade',
              style: TextStyle(fontSize: 80.0, fontFamily: 'Oswald'),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 1),
          child: Center(
            child: Text(
              "Buy | Exchange | Rent",
              style: TextStyle(
                fontSize: 28.0,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 45, left: 80, right: 70),
          child: Image.asset("images/logoiste.png"),
        ),
        Container(
          margin: EdgeInsets.only(top: 60),
          child: RaisedButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (ccontext) => SignUpScreen()));
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
                constraints: BoxConstraints(maxWidth: 250.0, minHeight: 55.0),
                alignment: Alignment.center,
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 22.0, color: Colors.white),
                ),
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (ccontext) => LoginScreen()));
            },
            child: Text(
              'Sign Up',
              style: TextStyle(color: Color(0xFFDB5FA0), fontSize: 20),
            ),
          ),
        ),
      ],
    );
  }
}
