import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../cart/cart_screen.dart';
import '../../login/login_screen.dart';
import '../../notification/notification.dart';

AppBar homeActionBar(context) {
  return AppBar(
    backgroundColor: Colors.orange,
    elevation: 0,
    title: ListTile(
      contentPadding: EdgeInsets.zero,
      leading: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginScreen()));
        },
        child: const Hero(
            tag: "userThumbnail",
            child: CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage(profileThumb),
              backgroundColor: Colors.transparent,
            )),
      ),
      title: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Spark Cart',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Text(
            'A few clicks is all it takes.',
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.normal,
                color: Colors.white),
          )
        ],
      ),
    ),
    centerTitle: false,
    actions: [
      Padding(
          padding: const EdgeInsets.all(8),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotificationScreen()),
              );
            },
            child: const Icon(CupertinoIcons.bell,
                size: 30, color: Colors.white70),
          )),
      Padding(
          padding: const EdgeInsets.all(8),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProductCart()),
              );
            },
            child: const Icon(CupertinoIcons.cart,
                size: 30, color: Colors.white70),
          )),
      //Icon(CupertinoIcons.search, size: 30, color: Colors.deepOrangeAccent)
    ],
  );
}
