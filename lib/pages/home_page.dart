
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/styles/app_colors.dart';
import 'package:flutter_portfolio/providers/profile_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/link.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});
  final double headerHeight = 400;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(profileNotifierProvider);
    return SelectionArea(
      child: Scaffold(
        backgroundColor: AppColors.groupedBackround(context),
        body: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            //ヘッダの背景
            Container(
              height: headerHeight + 100,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://t3.ftcdn.net/jpg/00/64/77/16/360_F_64771693_ncondhOJwNdvLjBfeIwswLqhsavUSSY5.jpg"),
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
                          borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(20),
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
        const SNSArea(),
        const SizedBox(height: 16),
        const IntroArea(),
        for (int i = 0; i < 10; i++) ...[
          const SizedBox(height: 16),
          const Text(
            "学歴",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: AppColors.secondary(context)),
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


class SNSArea extends StatelessWidget {
  const SNSArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        SNSButton(
          url: "https://www.google.com",
          faIcon: FontAwesomeIcons.locationDot,
          text: "Hokkaido",
        ),
        SNSButton(
          url: "https://github.com",
          faIcon: FontAwesomeIcons.github,
          text: "GitHub",
        ),
        SNSButton(
          url: "https://www.apple.com/jp/",
          faIcon: FontAwesomeIcons.appStore,
          text: "AppStore",
        ),
        SNSButton(
          url: "https://www.facebook.com",
          faIcon: FontAwesomeIcons.facebook,
          text: "Facebook",
        ),
        SNSButton(
          url: "https://www.instagram.com",
          faIcon: FontAwesomeIcons.instagram,
          text: "Instagram",
        ),
      ],
    );
  }
}


class IntroArea extends ConsumerWidget {
  const IntroArea({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(profileNotifierProvider);
    return Text(
      profile.introduction,
      style: const TextStyle(fontSize: 16),
    );
  }
}



class SNSButton extends StatelessWidget {
  const SNSButton({
    super.key,
    required this.url,
    required this.faIcon,
    this.text,
  });

  final String url;
  final IconData faIcon;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Link(
      uri: Uri.parse(url),
      target: LinkTarget.blank,
      builder: (context, followLink) {
        return TextButton(
      onPressed: followLink,
      style: TextButton.styleFrom(
        foregroundColor: AppColors.label(context),
        backgroundColor: AppColors.grey(context),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: SizedBox(
        height: 40,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FaIcon(faIcon, size: 25),
            const SizedBox(width: 8),
            if (text != null)
              Text(
                text!,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
          ],
        ),
      ),
    );
      },
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
