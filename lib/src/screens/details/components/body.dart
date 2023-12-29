import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:spark_cart/src/models/products.dart';

import 'widgets.dart';

class DetailBody extends StatefulWidget {
  const DetailBody({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  _DetailBodyState createState() => _DetailBodyState();
}

class _DetailBodyState extends State<DetailBody> {
  int _itemCount = 1;

  @override
  Widget build(BuildContext context) {
    var imageHeight = (MediaQuery.of(context).size.height) / 2;
    Product product = widget.product;

    return Padding(
      padding: const EdgeInsets.all(0),
      child: ListView(shrinkWrap: true, children: [
        Container(
          height: (imageHeight),
          child: Hero(
              tag: widget.product.id,
              child: Image.network(widget.product.image)),
        ),
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.all(20),
          decoration: boxDecoration(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildTitleText(product),
              const SizedBox(height: 10),
              Text(product.description),
              const SizedBox(height: 20),
              buildThumbnailRow(widget.product),
              const SizedBox(height: 20),
              buildRowColors(),
              const SizedBox(height: 20),
              buildRowBtnPrice(context, product)
            ],
          ),
        ),
      ]),
    );
  }

  Text buildTitleText(Product product) {
    return Text(
      product.title,
      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }

  Row buildRowColors() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text('Color'),
        const SizedBox(width: 10),
        buildCircleColorAvatar(Colors.green.shade400),
        const SizedBox(width: 10),
        buildCircleColorAvatar(Colors.red.shade300),
        const SizedBox(width: 10),
        buildCircleColorAvatar(Colors.orange.shade300),
        const Spacer(),
        Container(
          height: 40,
          width: 100,
          decoration: BoxDecoration(
              color: Colors.orange.shade100,
              shape: BoxShape.rectangle,
              borderRadius: const BorderRadius.all(Radius.circular(8))),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: () {
                      print(_itemCount);
                      setState(() {
                        _itemCount = (_itemCount + 1);
                      });
                    },
                    child: const Icon(CupertinoIcons.plus_circle)),
                Text('$_itemCount'),
                InkWell(
                    onTap: () {
                      print(_itemCount);
                      setState(() {
                        if (_itemCount != 1) {
                          _itemCount = (_itemCount - 1);
                        }
                      });
                    },
                    child: const Icon(CupertinoIcons.minus_circle))
              ],
            ),
          ),
        )
      ],
    );
  }
}
