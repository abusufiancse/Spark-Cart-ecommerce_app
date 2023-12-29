import 'package:flutter/material.dart';
import 'package:spark_cart/src/components/text_widgets.dart';
import 'package:spark_cart/src/screens/payment/components/wallet_options_list.dart';

AppBar buildCheckoutAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.orange,
    elevation: 0,
    title: const Text(
      'Checkout (\$ 128.00)',
      style: TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
    centerTitle: false,
    leading: backNavIcon(context),
  );
}

ListTile buildPaymentList(List<PayCard> paymentOptions, int index) {
  return ListTile(
    title: Text(
      paymentOptions[index].title,
      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    ),
    subtitle: Text(
      paymentOptions[index].title,
      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
    ),
    onTap: () => print(paymentOptions[index]),
    leading: const Icon(Icons.credit_card, color: Colors.blueGrey, size: 30),
    trailing: const Icon(
      Icons.arrow_drop_down_sharp,
      color: Colors.blueGrey,
    ),
  );
}
