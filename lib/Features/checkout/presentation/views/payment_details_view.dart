import 'package:checkout_feature/Features/checkout/presentation/views/widgets/payment_details_view_body.dart';
import 'package:checkout_feature/core/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class PaymentDetailsView extends StatelessWidget{
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppBar(title: "Payment Details"),
      body: PaymentDetailsViewBody(),
    );
  }
}
