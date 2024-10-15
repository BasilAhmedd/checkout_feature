import 'package:flutter/material.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Padding(
        padding: const EdgeInsets.all(40.0),
        child: Container(
          decoration: ShapeDecoration(
              color: const Color(0xffD9D9D9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              )
          ),
        ),
      ),
      // Positioned(
      //   top: 150,
      //     left: 0,
      //     right: 0,
      //     child: Row(
      //       children: List.generate(
      //         20,
      //             (index) => Expanded(
      //             child: Padding(
      //               padding: const EdgeInsets.symmetric(horizontal: 2.0),
      //               child: Container(
      //                 color: Colors.black,
      //                 width: 2,
      //               ),
      //             )),
      //       ),
      //     )),

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
      Positioned(
          top: 10,
          left: 0,
          right: 0,
          child: CircleAvatar(
            radius: 50,
            backgroundColor: Color(0xFFD9D9D9),
            child: CircleAvatar(
              radius: 42,
              backgroundColor: Color(0xff34a853),
              child: Icon(
                Icons.check,
                color: Colors.white,
                size: 70,
              ),
            ),
          )),
    ]);
  }
}
