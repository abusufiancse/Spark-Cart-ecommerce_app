import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spark_cart/src/components/text_widgets.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  Card buildListCard() {
    return Card(
      elevation: 8,
      child: Container(
        padding: const EdgeInsets.all(8),
        child: ListTile(
          onTap: () => print('Tapped'),
          leading: const Icon(
            Icons.info_outline,
            size: 30,
            color: Colors.cyan,
          ),
          title: const Text('Did you know?'),
          subtitle: const Text('Here is something that you might like to know'),
          trailing: const Icon(Icons.clear),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: backNavIcon(
              context) //Icon(Icons.clear, color: Colors.redAccent,),
          ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: ListView.builder(
            itemCount: 4,
            itemBuilder: (BuildContext ctxt, int index) {
              return buildListCard();
            }),
      ),
    );
  }
}
