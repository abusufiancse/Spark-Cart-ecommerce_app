import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spark_cart/src/components/text_widgets.dart';

AppBar buildCartAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    title: Text(
      'Your Cart (3 items)',
      style: TextStyle(
        color: Colors.orange,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
    centerTitle: false,
    leading: backNavIcon(context),
  );
}
