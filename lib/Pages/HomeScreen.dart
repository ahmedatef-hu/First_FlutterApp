import 'package:flutter/material.dart';
import 'package:fristflutter/Components/AppBar.dart';
import 'package:fristflutter/Components/CustomProduct.dart';
import 'package:fristflutter/Components/NavBar.dart';
import 'package:fristflutter/Pages/ContactScreen.dart';
import 'package:fristflutter/Pages/ProductDetialsScreen.dart';
import 'package:fristflutter/Pages/ProfileScreen.dart';

class HomeScreen extends StatelessWidget {
  final List<CustomProduct> Products = const [
    CustomProduct(Title: "Product 1", Price: "\$2000", ProductImage: AssetImage("lib/Images/Product(1).png")),
    CustomProduct(Title: "Product 2", Price: "\$5000", ProductImage: AssetImage("lib/Images/Product(2).png")),
    CustomProduct(Title: "Product 3", Price: "\$6000", ProductImage: AssetImage("lib/Images/Product(1).png")),
    CustomProduct(Title: "Product 4", Price: "\$8000", ProductImage: AssetImage("lib/Images/Product(2).png")),
  ];
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar("HomeScreen"),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20),
                width: 350,
                height: 170,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(209, 0, 0, 0),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      height: 170,
                      width: 170,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.horizontal(left: Radius.circular(30)),
                        child: Image(
                          image: AssetImage('lib/Images/HeadPhone.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(100, 255, 255, 255),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            child: const Text(
                              "New Product",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          const Text(
                            "HeadPhone X1",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromARGB(255, 223, 102, 9),
                            ),
                            child: const Text(
                              "Buy Now",
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Our Products",
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: Colors.deepOrangeAccent,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Icon(Icons.menu_rounded, color: Colors.white),
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 15, bottom: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(7),
                          decoration: BoxDecoration(
                            color: Colors.deepOrange,
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: const Text("All Product", style: TextStyle(color: Colors.white)),
                        ),
                        Container(
                          padding: const EdgeInsets.all(7),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 139, 139, 139),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: const Text("Recommended", style: TextStyle(color: Colors.white)),
                        ),
                        Container(
                          padding: const EdgeInsets.all(7),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 139, 139, 139),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: const Text("Best Seller", style: TextStyle(color: Colors.white)),
                        ),
                        Container(
                          padding: const EdgeInsets.all(7),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 139, 139, 139),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: const Text("New Product", style: TextStyle(color: Colors.white)),
                        ),
                      ],
                    ),
                  ),
                  
                  Expanded(
                    child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      itemCount: Products.length,
                      itemBuilder: (context, index) => Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(158, 158, 158, 158),
                        ),
                        child: GestureDetector(
                                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> Productdetialsscreen(product: Products[index]),)),
                          child: Products[index]),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: NavBar(),
    );
  }
}

