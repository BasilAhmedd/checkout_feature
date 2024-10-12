import 'package:checkout_feature/core/utils/styles.dart';
import 'package:flutter/material.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({super.key, required this.value, required this.title});

  final String value;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Styles.style24,
        ),
        const Spacer(),
        Text(
          value,
          style: Styles.style24,
        ),
      ],
    );
  }
}
