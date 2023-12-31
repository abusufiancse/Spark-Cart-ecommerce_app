import 'package:flutter/material.dart';

Container buildBannerContainer() {
  return Container(
    height: 100,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.yellow.shade200),
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        stops: [0.1, 0.5, 0.7, 0.9],
        colors: [
          Colors.yellow.shade200,
          Colors.yellow.shade100,
          Colors.yellow.shade100,
          Colors.yellow.shade400,
        ],
      ),
    ),
    child: const Padding(
      padding: EdgeInsets.all(20.0),
      child: Row(
        children: [
          Text(
            '25',
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '%',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          VerticalDivider(
              thickness: 2, color: Colors.grey, indent: 10, endIndent: 10),
          Spacer(),
          Text('Use Dutch Bangla Bank card \nat checkout')
        ],
      ),
    ),
  );
}
