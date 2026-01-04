import 'package:flutter/material.dart';
import 'package:grandhotel/features/onboarding/view/widgets/feature_card.dart';

class SecondPageInOnboarding extends StatelessWidget {
  const SecondPageInOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),

        /// Cards Row
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            FeatureCard(
              icon: Icons.lock_outline,
              title: "Safe Booking",
              description: "Secure and fast reservations",
            ),
            FeatureCard(
              icon: Icons.support_agent,
              title: "24/7 Service",
              description: "Support available all day",
              isMain: true,
            ),
            FeatureCard(
              icon: Icons.check_circle_outline,
              title: "Easy Access",
              description: "Simple and smooth experience",
            ),
          ],
        ),

        const Spacer(),

        /// Title
        const Text(
          "Exceptional Features",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w800,
            color: Color(0xFF2E3192),
          ),
          textAlign: TextAlign.center,
        ),

        const SizedBox(height: 12),

        /// Subtitle
        Text(
          "Enjoy a wide range of features\nthat make your stay unforgettable",
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey.shade600,
            height: 1.5,
          ),
          textAlign: TextAlign.center,
        ),

        const SizedBox(height: 40),
      ],
    );
  }
}
