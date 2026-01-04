import 'package:flutter/material.dart';

class ThirdPageInOnboarding extends StatelessWidget {
  const ThirdPageInOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white24,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Icon(Icons.join_right_sharp, size: 100, color: Colors.white))
          ],
        ),
      ],
      
    );
    
    
  }
}
