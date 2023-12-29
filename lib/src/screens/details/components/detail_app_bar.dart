import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spark_cart/src/components/text_widgets.dart';

AppBar detailAppBar(context) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.orange,
    title: const Text('Product Details'),
    titleTextStyle: const TextStyle(color: Colors.white, fontSize: 18),
    leading: backNavIcon(context),
    actions: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
            backgroundColor: Colors.grey.shade300,
            child: Icon(
              CupertinoIcons.heart,
              color: Colors.red.shade300,
              size: 30,
            )),
      ),
    ],
  );
}
