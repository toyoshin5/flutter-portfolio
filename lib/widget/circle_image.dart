import 'package:flutter/material.dart';
import 'package:flutter_portfolio/styles/app_colors.dart';

class CircleImage extends StatelessWidget {
  const CircleImage({
    super.key,
    required this.image,
    required this.size,
    this.hasShadow = false,
  });

  final ImageProvider image;
  final double size;
  final bool hasShadow;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: (hasShadow)
            ? [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 6,
                  offset: const Offset(0, 3),
                ),
              ]
            : null,
        border: (hasShadow)
            ? null
            : Border.all(color: AppColors.secondary(context), width: 1),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: image,
        ),
      ),
    );
  }
}
