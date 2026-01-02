import 'package:flutter/material.dart';
import 'package:grandhotel/features/splash/view/splash_view.dart';

void main() {
  runApp(const GrandHotel());
}

class GrandHotel extends StatelessWidget {
  const GrandHotel({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grand Hotel',
      debugShowCheckedModeBanner: false,
     
      home: Scaffold(
        
        body:ModernSplashScreen(),
      
      )
    );
  }
}
