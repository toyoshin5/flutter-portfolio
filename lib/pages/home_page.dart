import 'package:flutter/material.dart';
import 'package:flutter_portfolio/colors/app_colors.dart';
import 'package:flutter_portfolio/models/profile.dart';
import 'package:flutter_portfolio/providers/profile_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});
  final double headerHeight = 400;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(profileNotifierProvider);

    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          Container(
            height: headerHeight+200,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://mir-s3-cdn-cf.behance.net/projects/404/d0bf76110130697.Y3JvcCw1NzUzLDQ1MDAsMTEyNSww.png"),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Stack(
              alignment: AlignmentDirectional.topCenter,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: headerHeight),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(32),
                        ),
                        color: AppColors.groupedBackround(context),
                      ),
                      padding: const EdgeInsets.fromLTRB(16, 60, 16, 0),
                      child: const ScrollContentsArea(),
                    ),
                  ],
                ),
                Positioned(
                  top: headerHeight - 50,
                  child: CircleImage(
                      image: NetworkImage(profile.imageUrl),
                      size: 100,
                      hasShadow: true),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ScrollContentsArea extends ConsumerWidget {
  const ScrollContentsArea({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(profileNotifierProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MyNameArea(),
        const SizedBox(height: 16),
        Text(
          profile.introduction,
          style: const TextStyle(fontSize: 16),
        ),
        for (int i = 0; i < 10; i++) ...[
          const SizedBox(height: 16),
          const Text(
            "学歴",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
        ],
      ],
    );
  }
}

class MyNameArea extends ConsumerWidget {
  const MyNameArea({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(profileNotifierProvider);
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Shingo Toyoda",
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            profile.name + " (22)",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: AppColors.secondary(context)),
          ),
          Text(
            profile.position,
            style: TextStyle(fontSize: 16, color: AppColors.secondary(context)),
          ),
        ],
      ),
    );
  }
}

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
          border: (hasShadow) ? null : Border.all(color: AppColors.secondary(context), width: 1),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: image,
          )),
    );
  }
}
