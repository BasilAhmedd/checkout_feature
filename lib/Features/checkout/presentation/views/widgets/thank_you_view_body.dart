import 'package:flutter/material.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Padding(
        padding: const EdgeInsets.all(32.0),
        child: Container(
          decoration: ShapeDecoration(
              color: const Color(0xffD9D9D9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              )),
        ),
      ),
      Positioned(
          left: 15,
          bottom: MediaQuery.of(context).size.height * 0.2,
          child: CircleAvatar(
            backgroundColor: Colors.white,
          )),
      Positioned(
          right: 15,
          bottom: MediaQuery.of(context).size.height * 0.2,
          child: CircleAvatar(
            backgroundColor: Colors.white,
          )),
    ]);
  }
}
