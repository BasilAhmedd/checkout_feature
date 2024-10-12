import 'package:checkout_feature/Features/checkout/presentation/views/widgets/order_info_item.dart';
import 'package:checkout_feature/Features/checkout/presentation/views/widgets/total_price.dart';
import 'package:checkout_feature/core/utils/styles.dart';
import 'package:checkout_feature/core/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../payment_details_view.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          const SizedBox(
            height: 18,
          ),
          Expanded(child: Image.asset("assets/images/basket.png")),
          const SizedBox(
            height: 25,
          ),
          const OrderInfoItem(
            title: 'Order Subtotal',
            value: r"$42.97",
          ),
          const SizedBox(
            height: 3,
          ),
          const OrderInfoItem(
            title: 'Discount',
            value: r"$0",
          ),
          const SizedBox(
            height: 3,
          ),
          const OrderInfoItem(
            title: 'Shipping',
            value: r"$8",
          ),
          const Divider(
            thickness: 2,
            height: 34,
            color: Color(0xffC7C7C7),
          ),
          const TotalPrice(value: r"$50.97", title: "Total"),
          const SizedBox(
            height: 16,
          ),
          CustomButton(
            text: "Complete Payment",
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const PaymentDetailsView()));
            },
          ),
          const SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }
}
