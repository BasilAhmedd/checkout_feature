import 'package:checkout_feature/core/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

import 'widgets/my_cart_view_body.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "My Cart"),
      body: const MyCartViewBody(),
    );
  }


}
