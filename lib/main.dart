import 'package:flutter/material.dart';
import 'package:grandhotel/features/splash/view/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
     
      home: Scaffold(
        
        body:ModernSplashScreen(),
      ),
    );
  }
}
