import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spark_cart/constants.dart';
import 'package:spark_cart/src/models/products.dart';
import 'package:spark_cart/src/screens/cart/cart_screen.dart';

Container imageContainer(double imageHeight, Product product) {
  return Container(
    height: imageHeight,
    child: Hero(tag: product.id, child: Image.network(product.image)),
  );
}

Row thumbnailImages(product) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      clipImageRect(product.image),
      const SizedBox(width: 10),
      clipImageRect(product.image),
      const SizedBox(width: 10),
      clipImageRect(product.image),
    ],
  );
}

Row buildThumbnailRow(product) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      clipImageRect(product.image),
      const SizedBox(width: 10),
      clipImageRect(product.image),
      const SizedBox(width: 10),
      clipImageRect(product.image),
      const Spacer(),
      rowRating()
    ],
  );
}

Row rowRating() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Icon(
        Icons.star,
        color: Colors.amber,
        size: 20,
      ),
      SizedBox(width: 4),
      Text('4.7', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
    ],
  );
}

Row buildRowBtnPrice(context, Product product) {
  return Row(
    children: [
      Text(
        '\$ ${product.price}',
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      const Spacer(),
      ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ProductCart()));
          },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
          child: const Text('BUY NOW', style: TextStyle(fontSize: 20))),
    ],
  );
}

CircleAvatar buildCircleColorAvatar(Color color) {
  return CircleAvatar(
    backgroundColor: color,
    radius: sDefaultColorPadding,
  );
}

BoxDecoration boxDecoration() {
  return BoxDecoration(
    color: Colors.grey.shade200,
    border: Border.all(
      color: Colors.grey.shade300,
    ),
    borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(30), topRight: Radius.circular(30)),
  );
}

ClipRRect clipImageRect(image) {
  return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(25.0)),
      child: Image.network(image, height: 50, width: 50));
}
