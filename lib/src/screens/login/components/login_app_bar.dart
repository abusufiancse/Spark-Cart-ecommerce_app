import 'package:flutter/material.dart';
import 'package:spark_cart/src/components/text_widgets.dart';

AppBar buildLoginAppBar(context) {
  return AppBar(
    backgroundColor: Colors.orange,
    elevation: 0,
    leading: backNavIcon(context),
    actions: [],
  );
}
