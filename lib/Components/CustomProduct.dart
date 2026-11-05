import 'package:flutter/material.dart';
import 'package:fristflutter/Pages/ProductDetialsScreen.dart';

class CustomProduct extends StatelessWidget {
  final String Title;
  final String Price;
  final AssetImage ProductImage;

  const new({
    super.key,
    required this.Title,
    required this.Price,
    required this.ProductImage
  });

  @override
  Widget build(BuildContext context) {
    return 
      Column(
        children: [
          Expanded(
            child: Image(
              image: ProductImage,
              fit: BoxFit.contain,
            ),
          ),
          Text(
          Title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(Price),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color.fromARGB(167, 0, 0, 0),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.add, color: Colors.white, size: 20),
                  ),
                ),
              ],
            ),
          )
        ],
    );
  }
}