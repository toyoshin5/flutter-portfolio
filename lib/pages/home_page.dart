import 'package:flutter/material.dart';
import 'package:flutter_portfolio/models/profile.dart';
import 'package:flutter_portfolio/providers/profile_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(profileNotifierProvider);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //高さ100,横最大の画像。画像はダミーのURLを使っている
            HeaderArea(profile: profile),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyNameArea(),
                  const SizedBox(height: 16),
                  Text(
                    profile.introduction,
                    style: const TextStyle(fontSize: 16),
                  ),
                  for (int i = 0; i < 10; i++)...[
                    const SizedBox(height: 16),
                    Text("学歴", style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 8),

                  ],
                    
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HeaderArea extends StatelessWidget {
  const HeaderArea({
    super.key,
    required this.profile,
  });

  final Profile profile;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://4kwallpapers.com/images/wallpapers/macos-big-sur-apple-layers-fluidic-colorful-wwdc-stock-3840x2160-1455.jpg"),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: CircleImage(
              image: Image.network(profile.imageUrl).image,
              size: 100,
              hasShadow: true,
            ),
          ),
        ],
      ),
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
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.grey),
          ),
          Text(
            profile.position,
            style: const TextStyle(fontSize: 16, color: Colors.grey),
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
          border: (hasShadow) ? null : Border.all(color: Colors.grey, width: 1),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: image,
          )),
    );
  }
}
