import 'package:flutter/material.dart';
import 'package:grandhotel/core/widgets/custom_button.dart';
import 'package:grandhotel/core/widgets/modern_icon_hotel.dart';

class FirstPageInOnboarding extends StatelessWidget {
  const FirstPageInOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       ModernIconHotel(),
        const SizedBox(height: 40),
        const Text(
          "Welcome to \n GrandHotel",
          style: TextStyle(fontSize: 32, color: Colors.white),
        ),
        const SizedBox(height: 10),
        const Text(
          "Discover amazing hotels near you",
          style: TextStyle(fontSize: 18, color: Colors.white70),
          textAlign: TextAlign.center,
        ),
        const Spacer(),
        CustomButton(label: "Next", onPressed: (){}, color: Colors.white, width: 200, height: 50)
      ],
    );
  }
}