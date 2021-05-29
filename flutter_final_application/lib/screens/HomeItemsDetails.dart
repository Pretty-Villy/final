import 'package:flutter/material.dart';
import 'package:flutter_final_application/screens/AdToCartScreen.dart';
import 'package:flutter_final_application/screens/CreateAddressScreem.dart';

class HomeItemsDetailsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LaunchState();
}

class LaunchState extends State<HomeItemsDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Item Details',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: initScreen(context),
    );
  }

  Widget initScreen(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
          margin: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
          elevation: 5.0,
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Center(
              child: Image(
                image: itemImage(),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 20.0, top: 10.0),
          child: Text(
            'The best book ever',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 20.0, top: 10.0),
          child: Text(
            "450 usd",
            style: TextStyle(
                color: Colors.black,
                fontSize: 15.0,
                fontWeight: FontWeight.w300),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 25.0, top: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RaisedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  '4.5',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                elevation: 5.0,
                color: Color(0xFFDA535A),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  'Very Good',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 17.0,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  '49 reviews',
                  style: TextStyle(
                    color: Color(0xFFDA535A),
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 25.0, top: 10.0),
          child: Text(
            'Description',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 17.0,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 25.0, top: 10.0),
          child: Text(
            'A Wonderful with wonderful people',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15.0,
            ),
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Align(
                alignment: FractionalOffset.bottomLeft,
                child: MaterialButton(
                  padding: EdgeInsets.only(left: 60, right: 60),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => AddToCartScreen()));
                  },
                  color: Color(0xFFEEEEEE),
                  child: Text(
                    'Add to Cart',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  height: 90.0,
                  minWidth: 45.0,
                ),
              ),
              Align(
                alignment: FractionalOffset.bottomRight,
                child: MaterialButton(
                  padding: EdgeInsets.only(left: 70, right: 70),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => CreateAddressScreen()));
                  },
                  color: Color(0xFFDA535A),
                  child: Text(
                    'Buy Now',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  height: 90.0,
                  minWidth: 45.0,
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  ImageProvider itemImage() {
    AssetImage image = AssetImage("images/book.png");
    return image;
  }
}
