import 'package:flutter/material.dart';
import 'dart:async';

import 'package:grandhotel/core/widgets/modern_icon_hotel.dart';

class ModernSplashScreen extends StatefulWidget {
  const ModernSplashScreen({Key? key}) : super(key: key);

  @override
  State<ModernSplashScreen> createState() => _ModernSplashScreenState();
}

class _ModernSplashScreenState extends State<ModernSplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _slideController;
  late AnimationController _shimmerController;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    
    // Animation controller للانزلاق
    _slideController = AnimationController(
      duration: const Duration(milliseconds: 1200),
      vsync: this,
    );

    // Animation controller للشيمر (التأثير المتحرك)
    _shimmerController = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    )..repeat();

    // تأثير الانزلاق من الأعلى
    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, -1),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _slideController,
      curve: Curves.easeOutCubic,
    ));

    // تأثير الظهور التدريجي
    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _slideController,
      curve: Curves.easeIn,
    ));

    // بدء الأنيميشن
    _slideController.forward();

    // الانتقال للصفحة الرئيسية بعد 3 ثواني
    Timer(const Duration(seconds: 3), () {
      // استبدل HomePage() باسم صفحتك الرئيسية
      // Navigator.pushReplacement(
      //   context,
      //   MaterialPageRoute(builder: (context) => HomePage()),
      // );
      
      // للتجربة فقط - اطبع رسالة
      print('Navigate to Home Page');
    });
  }

  @override
  void dispose() {
    _slideController.dispose();
    _shimmerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // الدوائر الديكورية في الخلفية
          _buildBackgroundCircles(),
          
          // المحتوى الرئيسي
          Center(
            child: FadeTransition(
              opacity: _fadeAnimation,
              child: SlideTransition(
                position: _slideAnimation,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // أيقونة الفندق الحديثة
                    ModernIconHotel(),
                    
                    const SizedBox(height: 40),
                    
                    // اسم التطبيق
                    const Text(
                      'Grand Hotel',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w800,
                        color: Color(0xFF2E3192),
                        letterSpacing: 1,
                      ),
                    ),
                    
                    const SizedBox(height: 10),
                    
                    // الوصف
                    Text(
                      'Your Perfect Stay Awaits',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[600],
                        letterSpacing: 0.5,
                      ),
                    ),
                    
                    const SizedBox(height: 60),
                    
                    // شريط التحميل المتحرك
                    _buildShimmerBar(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // بناء الدوائر الديكورية في الخلفية
  Widget _buildBackgroundCircles() {
    return Stack(
      children: [
        // الدائرة العلوية اليمنى
        Positioned(
          top: -100,
          right: -100,
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color(0xFF2E3192).withOpacity(0.1),
            ),
          ),
        ),
        
        // الدائرة السفلية اليسرى
        Positioned(
          bottom: -150,
          left: -150,
          child: Container(
            width: 350,
            height: 350,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color(0xFF00BCD4).withOpacity(0.1),
            ),
          ),
        ),
      ],
    );
  }

  

  // بناء شريط التحميل المتحرك (Shimmer Effect)
  Widget _buildShimmerBar() {
    return AnimatedBuilder(
      animation: _shimmerController,
      builder: (context, child) {
        return Container(
          width: 200,
          height: 4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                const Color(0xFF2E3192).withOpacity(0.3),
                const Color(0xFF2E3192),
                const Color(0xFF00BCD4),
                const Color(0xFF00BCD4).withOpacity(0.3),
              ],
              stops: [
                0.0,
                _shimmerController.value - 0.3,
                _shimmerController.value,
                _shimmerController.value + 0.3,
              ],
            ),
          ),
        );
      },
    );
  }
}



