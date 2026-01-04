import 'package:flutter/material.dart';
import 'package:grandhotel/core/styles/colors.dart';
import 'package:grandhotel/core/widgets/modern_icon_hotel.dart';

class FirstPageInOnboarding extends StatelessWidget {
  const FirstPageInOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
       Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           ModernIconHotel(),
         ],
       ),
        const SizedBox(height: 40),
        const Text(
          "Welcome to \n Grand Hotel",
          style: TextStyle(fontSize: 32, color: Colorss.primary, fontWeight: FontWeight.w800),
        ),
        const SizedBox(height: 10),
        const Text(
          "Discover amazing hotels near you",
          style: TextStyle(fontSize: 18, color: Color.fromARGB(179, 160, 158, 158)),
          textAlign: TextAlign.center,
        ),




      ],
    );
  }
}