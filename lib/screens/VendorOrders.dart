import 'package:flutter/material.dart';

class VendorOrders extends StatelessWidget {
  const VendorOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: const Text(
        'Vendor Orders Screen',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
