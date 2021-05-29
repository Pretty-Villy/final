import 'package:flutter/material.dart';
import 'package:flutter_final_application/screens/CreateAddressScreem.dart';

class AddToCartScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LaunchState();
}

class LaunchState extends State<AddToCartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          'My Cart',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: initScreen(),
    );
  }

  Widget initScreen() {
    return new Container(
      child: Stack(
        children: [
          ListView(
            children: [
              dummyDataofListView(
                  "images/book.png", "Book #1", "Romance", "500 usd", 4),
              dummyDataofListView(
                  "images/book.png", "Book #2", "Classic", "500 usd", 4),
              dummyDataofListView(
                  "images/book.png", "Book #3", "Manga", "500 usd", 4),
              dummyDataofListView(
                  "images/book.png", "Book #4", "Horror", "500 usd", 4),
              dummyDataofListView(
                  "images/book.png", "Book #5", "Horror", "500 usd", 4),
              dummyDataofListView(
                  "images/book.png", "Book #6", "Horror", "500 usd", 4),
              dummyDataofListView(
                  "images/book.png", "Book #7", "Horror", "500 usd", 4),
              dummyDataofListView(
                  "images/book.png", "Book #8", "Horror", "500 usd", 4),
              dummyDataofListView(
                  "images/book.png", "Book #9", "Horror", "500 usd", 4),
            ],
          ),
          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.all(20.0),
            child: MaterialButton(
              height: 50.0,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CreateAddressScreen()));
              },
              color: Color(0xFF374ABE),
              minWidth: double.maxFinite,
              child: Text(
                "Continue",
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
            ),
          ),
        ],
      ),
    );
  }

  dummyDataofListView(String img, String itemName, String itemCat,
      String itemPrice, int itemCount) {
    return Container(
      child: Card(
        color: Color(0xFFEEEEEE),
        margin: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
        child: ListTile(
          onTap: () {},
          leading: Container(
            child: Image(
              image: AssetImage(img),
            ),
          ),
          title: Container(
            margin: EdgeInsets.only(top: 10.0),
            height: 80,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 2.0),
                  child: Text(
                    itemName,
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 2.0),
                  child: Text(itemCat),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 2.0),
                  child: Text(
                    itemPrice,
                    style: TextStyle(color: Color(0xFF374ABE)),
                  ),
                ),
              ],
            ),
          ),
          subtitle: Container(
            child: Wrap(
              direction: Axis.horizontal,
              children: [
                GestureDetector(
                  onTap: () {
                    if (itemCount < 0) {
                      itemCount = 0;
                    } else {
                      itemCount--;
                    }
                  },
                  child: Icon(
                    Icons.remove,
                    size: 19.0,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10.0, top: 1.0, right: 10.0),
                  child: Text(
                    itemCount.toString(),
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (itemCount < 0) {
                      itemCount = 0;
                    } else {
                      itemCount--;
                    }
                  },
                  child: Icon(
                    Icons.add,
                    size: 19.0,
                  ),
                ),
              ],
            ),
          ),
          trailing: Icon(Icons.cancel),
        ),
      ),
    );
  }
}
