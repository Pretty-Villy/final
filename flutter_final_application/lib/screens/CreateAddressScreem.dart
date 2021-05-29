import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_final_application/screens/CheckoutScreen.dart';

class CreateAddressScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LaunchState();
}

class LaunchState extends State<CreateAddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
        title: Text(
          'Create Address',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: initScreen(),
      ),
    );
  }

  Widget initScreen() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 30.0, left: 30.0, right: 30.0),
          child: TextFormField(
            decoration: InputDecoration(
              labelText: "Name",
              border: OutlineInputBorder(),
            ),
            maxLines: 1,
            autofocus: false,
            keyboardType: TextInputType.text,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 30.0, left: 30.0, right: 30.0),
          child: TextFormField(
            decoration: InputDecoration(
              labelText: "Address Line",
              border: OutlineInputBorder(),
            ),
            maxLines: 1,
            autofocus: false,
            keyboardType: TextInputType.text,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 30.0, left: 30.0, right: 30.0),
          child: TextFormField(
            decoration: InputDecoration(
              labelText: "City",
              border: OutlineInputBorder(),
            ),
            maxLines: 1,
            autofocus: false,
            keyboardType: TextInputType.text,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 30.0, left: 30.0, right: 30.0),
          child: TextFormField(
            decoration: InputDecoration(
              labelText: "Postal Code",
              border: OutlineInputBorder(),
            ),
            maxLines: 1,
            autofocus: false,
            keyboardType: TextInputType.text,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 30.0, left: 30.0, right: 30.0),
          child: TextFormField(
            decoration: InputDecoration(
              labelText: "Phone Number",
              border: OutlineInputBorder(),
            ),
            maxLines: 1,
            autofocus: false,
            keyboardType: TextInputType.text,
          ),
        ),
        Center(
          child: Container(
            margin: EdgeInsets.only(top: 130),
            child: RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CheckOutScreen()));
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
                    'Add Address',
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
