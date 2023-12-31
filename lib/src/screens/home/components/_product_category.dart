import 'package:flutter/material.dart';
import 'package:spark_cart/constants.dart';

class Categories extends StatefulWidget {
  Categories({Key? key, required this.categories}) : super(key: key);

  final List categories;

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  // By default our first item will be selected
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: SizedBox(
        height: 36,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: widget.categories.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              widget.categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                wordSpacing: 1,
                color: selectedIndex == index ? Colors.orange : kTextLightColor,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20.0 / 4), //top padding 5
              height: 4,
              width: 40,
              color:
                  selectedIndex == index ? Colors.orange : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
