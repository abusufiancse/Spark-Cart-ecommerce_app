import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spark_cart/src/screens/cart/components/btn_bottom.dart';

import '../../../../apis.dart';
import 'banner_container.dart';

class CartBody extends StatefulWidget {
  const CartBody({super.key});

  @override
  _CartBodyState createState() => _CartBodyState();
}

class _CartBodyState extends State<CartBody> {
  List cartItems = [];

  @override
  void initState() {
    getProductByLimit(3).then((response) {
      print('responseBody: $response');
      if (response.statusCode == 200) {
        setState(() {
          cartItems = response.data as List;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return cartItems.isEmpty
        ? const Center(
            child: CircularProgressIndicator(
                strokeWidth: 2, backgroundColor: Colors.orangeAccent),
          )
        : Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                buildBannerContainer(),
                const SizedBox(height: 20),
                Expanded(
                    child: ListView.builder(
                        itemCount: cartItems.length,
                        itemBuilder: (BuildContext ctxt, int index) =>
                            buildBody(ctxt, index))),
                buildAlignBtnBottom(context),
              ],
            ),
          );
  }

  buildBody(BuildContext ctxt, int index) {
    return Card(
      child: Center(
        child: SizedBox(
            height: 100,
            //color: Colors.orange.shade100,
            child: ListTile(
              title: Text(
                cartItems[index]['title'],
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              leading: Image.network(
                cartItems[index]['image'],
                height: double.infinity,
                width: 60,
              ),
              subtitle: Text(
                '\$ ${cartItems[index]['price']}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            )),
      ),
    );
  }
}
