import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReceiptPage extends StatefulWidget {
  @override
  _ReceiptPageState createState() => _ReceiptPageState();
}

class _ReceiptPageState extends State<ReceiptPage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final AnimationController _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..repeat();

    final Animation<double> _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.fastOutSlowIn,
    );

    return Scaffold(
        body: Center(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizeTransition(
                sizeFactor: _animation,
                axis: Axis.horizontal,
                axisAlignment: -1,
                child: Container(
                    child: Image.asset(
                  'assets/images/success.png',
                  fit: BoxFit.contain,
                  color: Colors.orange,
                  height: 100,
                  width: 100,
                ))),
            const SizedBox(height: 10),
            const Text(
              ' You have successfully placed your order !!',
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange),
            ),
            const SizedBox(height: 20),
            const Text(
              ' Thank You for shopping with us !!',
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                ),
                child: const Text('Shop Again', style: TextStyle(fontSize: 20)))
          ],
        ),
      ),
    ));
  }
}
