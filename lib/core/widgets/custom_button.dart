import 'package:flutter/material.dart';
import 'package:grandhotel/core/styles/colors.dart';


class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.label,
    required this.onPressed,
    required this.color,
    required this.width,
    required this.height, this.decoration,
  });

  final String label;
  final VoidCallback onPressed;
  final Color color;
  final double width;
  final double height;
  final Decoration? decoration;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
 
      child: Container(
        decoration: decoration ??   BoxDecoration(
          gradient: LinearGradient(
            colors: [Colorss.primary, Colorss.accent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          border:  Border.all(color: Colorss.primary),
        ),
       
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(backgroundColor: color),
          child: Text(label),
        ),
      ),
    );
  }
}
