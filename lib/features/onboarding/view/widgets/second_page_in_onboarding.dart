import 'package:flutter/material.dart';
import 'package:grandhotel/core/widgets/custom_button.dart';

class SecondPageInOnboarding extends StatelessWidget {
  const SecondPageInOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.shopping_cart, size: 100, color: Colors.white),
            SizedBox(height: 20),
            Text(
              "Easy Booking",
              style: TextStyle(fontSize: 32, color: Colors.white),
            ),
            SizedBox(height: 10),
            Text(
              "Book rooms with a few taps",
              style: TextStyle(fontSize: 18, color: Colors.white70),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      SizedBox(height: 20),
      SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.local_offer, size: 100, color: Colors.white),
            SizedBox(height: 20),
            Text(
              "Best Deals",
              style: TextStyle(fontSize: 32, color: Colors.white),
            ),
            SizedBox(height: 10),
            Text(
              "Find exclusive offers and discounts",
              style: TextStyle(fontSize: 18, color: Colors.white70),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      
        ),
        SizedBox(height: 40),
        SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.support_agent, size: 100, color: Colors.white),
              SizedBox(height: 20),
              Text(
                "24/7 Support",
                style: TextStyle(fontSize: 32, color: Colors.white),
              ),
              SizedBox(height: 10),
              Text(
                "We're here to help anytime",
                style: TextStyle(fontSize: 18, color: Colors.white70),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      SizedBox(height: 60),
      Row(
      children: [
          CustomButton(label: "Next", onPressed: (){}, color: Colors.white, width: 150, height: 50),
        SizedBox(width: 20),
        CustomButton(label: "Back", onPressed: (){}, color: Colors.white, width: 150, height: 50),
      ],
      )
    ]
        );
    
  }
}


