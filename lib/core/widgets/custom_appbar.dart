import 'package:checkout_feature/core/utils/styles.dart';
import 'package:flutter/material.dart';

AppBar CustomAppBar({required final String title}) {
  return AppBar(
    centerTitle: true,
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: const Icon(Icons.arrow_back_sharp,color: Colors.black,),
    title:  Text(
      title,
      textAlign: TextAlign.center,
      style: Styles.style25,
    ),
  );
}
