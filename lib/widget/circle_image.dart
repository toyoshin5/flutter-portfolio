import 'package:flutter/material.dart';
import 'package:flutter_portfolio/styles/app_colors.dart';

class CircleImage extends StatelessWidget {
  const CircleImage({
    super.key,
    required this.image,
    required this.size,
  });

  final ImageProvider image;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.secondary(context), width: 1),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: image,
        ),
      ),
    );
  }
}
