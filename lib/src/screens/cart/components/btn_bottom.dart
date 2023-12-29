import 'package:flutter/material.dart';
import 'package:spark_cart/src/screens/payment/payment_screen.dart';

Align buildAlignBtnBottom(BuildContext context) {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Container(
      height: 80,
      color: Colors.white,
      child: Row(
        children: [
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Total',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 4),
              Text(
                '\$ 128.00',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              )
            ],
          ),
          const Spacer(),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PaymentGateway()));
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              child: const Text('Checkout', style: TextStyle(fontSize: 20)))
        ],
      ),
    ),
  );
}
