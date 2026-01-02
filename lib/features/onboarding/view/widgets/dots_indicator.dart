import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class MyDotsIndicatorWidget extends StatelessWidget {
  final int currentIndex;

  const MyDotsIndicatorWidget({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: 3,
      position: currentIndex.toDouble(),
      decorator: DotsDecorator(
        color: Colors.grey,
        activeColor: Colors.blue,
        size: const Size.square(8),
        activeSize: const Size(18, 8),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
      ),
    );
  }
}
