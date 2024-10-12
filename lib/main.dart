import 'package:checkout_feature/Features/checkout/presentation/views/my_cart_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CheckoutFeature());
}

class CheckoutFeature extends StatelessWidget {
  const CheckoutFeature({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
      home: MyCartView(),
    );
  }
}
