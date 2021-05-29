import 'package:flutter/material.dart';

class CheckOutScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LaunchState();
}

class LaunchState extends State<CheckOutScreen> {
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
          "Checkout",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: initScreen(),
    );
  }

  Widget initScreen() {
    return Container(
      child: Wrap(
        children: [
          Container(
            height: 370,
            child: ListView(
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
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 30, right: 30),
            child: Text(
              "Darkhan Zhapparov, Martin-Luther-Ring, House No: 38, Room: 504",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30, left: 30, right: 30),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Best Sale",
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
                Text(
                  "160.00",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, left: 30, right: 30),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Discount",
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
                Text(
                  "10%",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, left: 30, right: 30),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Shipping",
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
                Text(
                  "10.00",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30, left: 30, right: 30),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Total",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  "170.00",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 50),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CheckOutScreen()));
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
                    constraints:
                        BoxConstraints(maxWidth: 390.0, minHeight: 60.0),
                    alignment: Alignment.center,
                    child: const Text(
                      'Buy',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ),
                ),
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
