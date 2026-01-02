import 'package:flutter/material.dart';

class ModernIconHotel extends StatelessWidget {
  const ModernIconHotel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            color: const Color(0xFF2E3192),
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF2E3192).withOpacity(0.3),
                blurRadius: 20,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: const Icon(
            Icons.apartment,
            size: 60,
            color: Colors.white,
          ),
        );
  }
}
