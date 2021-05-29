import 'package:flutter/material.dart';
import 'package:flutter_final_application/screens/HomeItemsDetails.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LaunchState();
}

class LaunchState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }

  Widget initScreen(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.favorite,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.0),
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.0, top: 20.0),
                    child: Text(
                      'Categories',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0, right: 20.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: Text(
                      'See All',
                      style: TextStyle(
                        color: Colors.deepPurple,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Container(
              child: itemsList(),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.0, top: 20.0),
                    child: Text(
                      'Features',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0, right: 20.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: Text(
                      'See All',
                      style: TextStyle(
                        color: Colors.deepPurple,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Container(
              child: itemsList(),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.0, top: 20.0),
                    child: Text(
                      'Best Sales',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0, right: 20.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: Text(
                      'See All',
                      style: TextStyle(
                        color: Colors.deepPurple,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Container(
              child: itemsList(),
            ),
          ],
        ),
      ),
    );
  }

  Container itemsList() {
    return Container(
      height: 250.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          items("images/book.png", "Item Price", "Item Desc"),
          items("images/book.png", "Item Price", "Item Desc"),
          items("images/book.png", "Item Price", "Item Desc"),
          items("images/book.png", "Item Price", "Item Desc"),
          items("images/book.png", "Item Price", "Item Desc"),
          items("images/book.png", "Item Price", "Item Desc"),
          items("images/book.png", "Item Price", "Item Desc"),
          items("images/book.png", "Item Price", "Item Desc"),
        ],
      ),
    );
  }

  items(String img, String title, String des) {
    AssetImage image = new AssetImage(img);
    return Container(
      padding: EdgeInsets.all(10.0),
      child: SizedBox(
        width: 130.0,
        child: Wrap(
          children: [
            Image(
              image: image,
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => HomeItemsDetailsScreen()));
              },
              title: Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                des,
                style: TextStyle(fontSize: 12.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
