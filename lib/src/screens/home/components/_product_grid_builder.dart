import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:spark_cart/src/screens/details/details_screen.dart';

GridView buildProductGridView(BuildContext context, List<dynamic> products) {
  var orientation = MediaQuery.of(context).orientation;
  return GridView.builder(
    itemCount: products.length,
    padding: const EdgeInsets.only(top: 0),
    reverse: false,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: (orientation == Orientation.portrait) ? 2 : 3),
    itemBuilder: (BuildContext context, int index) {
      return GestureDetector(
        onTap: () => {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ProductDetail(
                        product: products[index],
                      ))),
        },
        child: gridCardItem(context, products[index]),
      );
    },
  );
}

Card gridCardItem(context, item) {
  return Card(
    elevation: 2,
    child: GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetail(
              product: item,
            ),
          ),
        );
      },
      child: Stack(
        children: [
          GridTile(
            child: Hero(
              tag: item.id,
              child: Image.network(
                item.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.title,
                    maxLines: 1,
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$${item.price}', // Assuming 'price' is a property in your product object
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.shopping_cart_checkout)
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
