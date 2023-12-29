import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:spark_cart/apis.dart';

import 'components/_action_bar.dart';
import 'components/body.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var fakeProducts = [];
  List categories = [];
  var subscription;

  @override
  void initState() {
    // subscription = Connectivity()
    //     .onConnectivityChanged
    //     .listen((ConnectivityResult result) {
    //   // Got a new connectivity status!
    //   _loadData();
    // });

    _loadData();
    super.initState();
  }

  void _loadData() async {
    getCategories().then((items) {
      setState(() {
        categories = items;
        categories.insert(0, "ALL");
      });
    });

    fetchAllProducts().then((items) {
      setState(() {
        fakeProducts = items;
      });
    });
  }

  @override
  dispose() {
    super.dispose();
    subscription.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: null,
      backgroundColor: Colors.white,
      appBar: homeActionBar(context),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: fakeProducts.isEmpty
            ? const Center(
                child: CircularProgressIndicator(
                  backgroundColor: Colors.orange,
                  strokeWidth: 1,
                ),
              )
            : HomeBody(
                categories: categories,
                products: fakeProducts,
              ),
      ),
    );
  }
}
