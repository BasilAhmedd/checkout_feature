import 'package:checkout_feature/Features/checkout/presentation/views/thank_you_view.dart';
import 'package:checkout_feature/Features/checkout/presentation/views/widgets/custom_credit_card.dart';
import 'package:checkout_feature/Features/checkout/presentation/views/widgets/payment_methods_list_view.dart';
import 'package:checkout_feature/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class PaymentDetailsViewBody extends StatefulWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  State<PaymentDetailsViewBody> createState() => _PaymentDetailsViewBodyState();
}

class _PaymentDetailsViewBodyState extends State<PaymentDetailsViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(child: PaymentMethodListView()),
        SliverToBoxAdapter(
            child: CustomCreditCard(
          autoValidateMode: autoValidateMode,
          formKey: formKey,
        )),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 12, left: 16, right: 16),
                child: CustomButton(
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                    } else {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ThankYouView()));
                      autoValidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                  text: "Payment",
                ),
              )),
        )
      ],
    );
  }
}
