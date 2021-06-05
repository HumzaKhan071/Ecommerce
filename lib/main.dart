import 'package:ecommerce_app/components/promo_card.dart';
import 'package:flutter/material.dart';
import 'components/shopping_card.dart';

// import 'package:flutter/cupertino.dart';
void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShoppingApp(),
    );
  }
}

class ShoppingApp extends StatefulWidget {
  const ShoppingApp({Key? key}) : super(key: key);

  @override
  _ShoppingAppState createState() => _ShoppingAppState();
}

class _ShoppingAppState extends State<ShoppingApp> {
  List<String> imgUrl = [
    "https://freepngimg.com/thumb/shoes/28530-3-nike-shoes-transparent.png",
  ];
  List<String> menShoes = [
    "https://freepngimg.com/thumb/running%20shoes/15-nike-running-shoes-png-image.png",
    "https://freepngimg.com/thumb/running%20shoes/2-asics-running-shoes-png-image.png",
    "https://freepngimg.com/thumb/running%20shoes/3-running-shoes-png-image.png",
  ];
  List<String> womenShoes = [
    "https://freepngimg.com/download/women%20shoes/6-pink-women-shoes-png-image.png",
    "https://freepngimg.com/download/women%20shoes/4-women-shoes-png-image.png",
    "https://freepngimg.com/download/women%20shoes/4-women-shoes-png-image.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          "Shoes Store ",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Promotions ! ",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              promoCard(Colors.blue, "Discover the Nike Collection", "20%", imgUrl[0]),
              
              SizedBox(height: 10.0,),
              Text("Men Shoes",style: TextStyle(color: Colors.black,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 20.0,
              ),
              Container(
                height: 200.0,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    shoppingCard(menShoes[0],"Nike Air","200"),
                    shoppingCard(menShoes[1],"Nike Air","200"),
                    shoppingCard(menShoes[2],"Nike Air","200"),
                    
                  ],
                ),
              ),
              SizedBox(height: 10.0,),
              Text("Women Shoes",style: TextStyle(color: Colors.black,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 20.0,
              ),
              Container(
                height: 200.0,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    shoppingCard(womenShoes[0],"Nike Air","200"),
                    shoppingCard(womenShoes[1],"Nike Air","200"),
                    shoppingCard(womenShoes[2],"Nike Air","200"),
                    
                  ],
                ),
              )


            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.orange[500],
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text("Favorite"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text("Cart"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
          ),
        ],
      ),
    );
  }
}
