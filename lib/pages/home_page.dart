import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widget/graph.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

import 'package:flutter_portfolio/providers/profile_provider.dart';
import 'package:flutter_portfolio/styles/app_colors.dart';
import 'package:flutter_portfolio/widget/budge.dart';
import 'package:flutter_portfolio/widget/circle_image.dart';
import 'package:flutter_portfolio/widget/link_button.dart';
import 'package:flutter_portfolio/widget/timeline.dart';

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
                      Gap(headerHeight),
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
                    top: headerHeight - 60,
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.groupedBackround(context),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      padding: const EdgeInsets.all(10),
                      child: CircleImage(
                        image: NetworkImage(profile.imageUrl),
                        size: 100,
                      ),
                    ),
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        _MyNameArea(),
        Gap(16),
        _SNSArea(),
        Gap(16),
        _IntroArea(),
        _NewsArea(),
        _ProjectsArea(),
        _SkillArea(),
        _AwardArea(),
        _ProfileArea(),
        _AboutThisSiteArea(),
      ],
    );
  }
}


class _ProfileArea extends StatelessWidget {
  const _ProfileArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleText(text: "Profile"),
        AppTimeline(),
      ],
    );
  }
}

class _MyNameArea extends ConsumerWidget {
  const _MyNameArea({
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
          const Text(
            "Shingo Toyoda",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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

class _SNSArea extends StatelessWidget {
  const _SNSArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        LinkButton(
          url: "https://www.google.com",
          faIcon: FontAwesomeIcons.locationDot,
          text: "Hokkaido",
        ),
        LinkButton(
          url: "https://github.com",
          faIcon: FontAwesomeIcons.github,
          text: "GitHub",
        ),
        LinkButton(
          url: "https://www.apple.com/jp/",
          faIcon: FontAwesomeIcons.appStore,
          text: "AppStore",
        ),
        LinkButton(
          url: "https://www.facebook.com",
          faIcon: FontAwesomeIcons.facebook,
          text: "Facebook",
        ),
        LinkButton(
          url: "https://www.instagram.com",
          faIcon: FontAwesomeIcons.instagram,
          text: "Instagram",
        ),
        LinkButton(
          url: "https:/atcoder.jp",
          faIcon: FontAwesomeIcons.laptopCode,
          text: "AtCoder",
        ),
      ],
    );
  }
}

class _IntroArea extends ConsumerWidget {
  const _IntroArea({
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

class _NewsArea extends StatelessWidget {
  const _NewsArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleText(text: "NEWS"),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.backGround(context),
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (int i = 0; i < 5; i++) ...[
                Text("2024/01/01",
                    style: TextStyle(
                        fontSize: 14, color: AppColors.secondary(context))),
                Text(
                    "ここにNewsここにNewsここにNewsここにNewsここにNewsここにNewsここにNewsここにNewsここにNewsここにNewsここにNewsここにNews",
                    style: TextStyle(fontSize: 16)),
                const Gap(16),
              ],
            ],
          ),
        ),
      ],
    );
  }
}

class _ProjectsArea extends StatelessWidget {
  const _ProjectsArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleText(text: "PROJECTS"),
        for (int i = 0; i < 5; i++) ...[
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.backGround(context),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(48),
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(48),
                bottomLeft: Radius.circular(12),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //画像
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(48),
                    topRight: Radius.circular(12),
                  ),
                  child: Image.network(
                    "https://media.istockphoto.com/id/1343356194/photo/close-up-photo-of-young-woman-using-laptop-and-stroking-her-cat-while-her-cat-taking-nap-next.jpg?s=612x612&w=0&k=20&c=TLpWC4moYUhdADK4-VDAfAOV2sphJWJ-mL49UjQVapY=",
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20,20,20,12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("ここにTitle",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      const Gap(8),
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: [
                          for (int i = 0; i < 5; i++) ...[
                            Budge(type: BudgeType.flutter),
                          ],
                        ],
                      ),
                      const Gap(8),
                      Text(
                          "ここにテキストここにテキストここにテキストここにテキストここにテキストここにテキストここにテキストここにテキスト",
                          style: TextStyle(fontSize: 16)),
                      const Gap(8),
                      LinkButton(
                          width: 120,
                          height: 35,
                          url: "https://www.google.com",
                          faIcon: FontAwesomeIcons.link,
                          text: "詳しく見る"),
                      const Gap(8),
                      Text("2020年 10月"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Gap(20),
        ],
      ],
    );
  }
}

class _SkillArea extends StatelessWidget {
  const _SkillArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleText(text: "SKILLS"),
        SkillGraph(),
      ],
    );
  }
}

class _AwardArea extends StatelessWidget {
  const _AwardArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleText(text: "AWARDS"),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.backGround(context),
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (int i = 0; i < 5; i++) ...[
                Text("2024/01/01",
                    style: TextStyle(
                        fontSize: 14, color: AppColors.secondary(context))),
                const Gap(6),
                const Text("ここにAwardここにAwardここにAward受賞",
                    style: TextStyle(fontSize: 16)),
                if (i != 4)
                  const Divider(
                    height: 24,
                  ),
              ],
            ],
          ),
        ),
      ],
    );
  }
}

class _AboutThisSiteArea extends StatelessWidget {
  const _AboutThisSiteArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Gap(128),
              Text(
                "このポートフォリオはFlutterで作成しています",
              ),
              Gap(8),
              Text(
                "© 2024 Shingo Toyoda All Rights Reserved.",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              Gap(64),
            ],
          ),
        ),
      ],
    );
  }
}

class TitleText extends StatelessWidget {
  const TitleText({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 24, 0, 16),
      child: Text(
        text,
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}


