import 'package:flutter/material.dart';
import 'package:fristflutter/Components/CustomProduct.dart';

class Productdetialsscreen extends StatelessWidget {
  final CustomProduct product;
  const Productdetialsscreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 30, right: 30),
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 6,
                          offset: Offset(0, 2),
                          spreadRadius: 6
                        )
                      ]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: ListTile(
                            title: Text(product.Title),
                            leading: Container(
                              padding: EdgeInsets.all(7),
                              child: Image(image: product.ProductImage, fit: BoxFit.cover),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color.fromARGB(255, 87, 2, 2),
                                    blurRadius: 20,
                                    offset: Offset(0, 2),
                                    spreadRadius: 6
                                  )
                                ]
                              ),
                              ),
                            subtitle: Text(product.Price),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          )
        ],
      ),
    );
    
  }
  
}