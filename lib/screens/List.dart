import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Listp extends StatelessWidget {
  Listp({super.key});
  List<String> navButton = ["Home", "Shop", "Favorites"];
  List<String> products = ["Bed", "Sofa", "Chair"];
  List<String> productsDetails = [
    "King size bed",
    "King size sofa",
    "Wooden Comfortable Chair"
        "New Chair"
  ];
  List<int> price = [300, 2500, 1860];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar Style....
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text("Price List"),
      ),
      //Scaffold Drawer Styling......
      drawer: Drawer(
        backgroundColor: CupertinoColors.white,
        elevation: 500.0,
        //Drawer's Child....
        child: ListView(
          //ListView Style Children...
          children: [
            //UserAccount Drawer........
            Container(
              margin: const EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                accountEmail: const Text("uispoj@gmail.com"),
                accountName: const Text("Onyedikachukwu"),
                currentAccountPicture: const CircleAvatar(
                  foregroundImage: AssetImage("images/IMG_5506.JPG"),
                ),
                otherAccountsPictures: const [],
                onDetailsPressed: () {},
                arrowColor: Colors.black,
              ),
            ),
            //Nav list For Home..
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {},
            ),
            //Nav List For Shop.....
            ListTile(
              leading: const Icon(Icons.shopping_cart),
              onTap: () {},
              title: const Text("Shop"),
            ),
            //Nav List For Favorites...
            ListTile(
              leading: const Icon(Icons.favorite),
              title: const Text("Favorites"),
              onTap: () {},
            ),
            //Padding....
            const Padding(
              padding: EdgeInsets.all(14.0),
              child: Text("Labels"),
            ),
          ],
        ),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {},
              leading: CircleAvatar(
                child: Text(
                  products[index][0],
                ),
              ),
              title: Text(products[index]),
              subtitle: Text(productsDetails[index]),
              trailing: Column(
                children: [
                  Text(price[index].toString()),
                  const Icon(Icons.bed_outlined),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
