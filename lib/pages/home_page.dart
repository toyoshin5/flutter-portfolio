import 'package:flutter/material.dart';
import 'package:flutter_portfolio/models/profile.dart';
import 'package:flutter_portfolio/screen_pod.dart';
import 'package:flutter_portfolio/widget/graph.dart';
import 'package:flutter_portfolio/widget/project_card.dart';
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
    final model = ref.watch(profileNotifierProvider);
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
                        image: NetworkImage(model.overview.imageUrl),
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
    final screenCls = ScreenRef(context).watch(screenProvider).sizeClass;
    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          flex: 3,
          child: Container(
            constraints: const BoxConstraints(maxWidth: 768),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const _MyNameArea(),
                const Gap(16),
                const _SNSArea(),
                const Gap(16),
                const _IntroArea(),
                if (screenCls != ScreenSizeClass.desktop) const _NewsArea(),
                const _ProjectsArea(),
                const _SkillArea(),
                const _AwardArea(),
                const _ProfileArea(),
                const _AboutThisSiteArea(),
              ],
            ),
          ),
        ),
        if (screenCls == ScreenSizeClass.desktop) ...[
          const Gap(16),
          const Flexible(
            flex: 1,
            child: _NewsArea(),
          ),
        ]
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
    final model = ref.watch(profileNotifierProvider);
    final screenCls = ScreenRef(context).watch(screenProvider).sizeClass;
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            model.overview.eName,
            style: TextStyle(
                fontSize: (screenCls != ScreenSizeClass.phone) ? 30 : 24,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "${model.overview.name} (22)",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: AppColors.secondary(context)),
          ),
          Text(
            model.overview.position,
            style: TextStyle(fontSize: 16, color: AppColors.secondary(context)),
          ),
        ],
      ),
    );
  }
}

class _SNSArea extends ConsumerWidget {
  const _SNSArea({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(profileNotifierProvider);
    final screenCls = ScreenRef(context).watch(screenProvider).sizeClass;
    final buttonHeight = (screenCls != ScreenSizeClass.phone) ? 40.0 : null;
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        for (final link in model.overview.links)
          LinkButton(
            url: link.url,
            height: buttonHeight,
            faIcon: faIconMap[link.faIconName] ?? FontAwesomeIcons.link,
            text: link.text,
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
    final model = ref.watch(profileNotifierProvider);
    return Text(
      model.overview.introduction,
      style: const TextStyle(fontSize: 16),
    );
  }
}

class _NewsArea extends ConsumerWidget {
  const _NewsArea({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(profileNotifierProvider);
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
              for (final news in model.news) ...[
                Text(news.date,
                    style: TextStyle(
                        fontSize: 14, color: AppColors.secondary(context))),
                Text(news.text, style: const TextStyle(fontSize: 16)),
                const Gap(16),
              ],
            ],
          ),
        ),
      ],
    );
  }
}

class _ProjectsArea extends ConsumerWidget {
  const _ProjectsArea({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(profileNotifierProvider);
    //画面の幅が450px以上の場合は2列にする
    final isTwoColumn = MediaQuery.of(context).size.width > 550;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleText(text: "PROJECTS"),
        if (isTwoColumn)
          //2等分する
          for (var i = 0; i < model.projects.length; i += 2) ...[
            IntrinsicHeight(
              child: Row(
                children: [
                  Expanded(
                    child: ProjectCard(project: model.projects[i]),
                  ),
                  if (i + 1 < model.projects.length) const Gap(16),
                  if (i + 1 < model.projects.length)
                    Expanded(
                      child: ProjectCard(project: model.projects[i + 1]),
                    ),
                ],
              ),
            ),
            const Gap(20),
          ]
        else
          for (final project in model.projects) ...[
            ProjectCard(project: project),
            const Gap(20),
          ],
      ],
    );
  }
}

class _SkillArea extends ConsumerWidget {
  const _SkillArea({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(profileNotifierProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleText(text: "SKILLS"),
        SkillGraph(
          skills: model.skills,
          height: 100,
        ),
      ],
    );
  }
}

class _AwardArea extends ConsumerWidget {
  const _AwardArea({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(profileNotifierProvider);
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
              for (final award in model.awards) ...[
                Text(award.date,
                    style: TextStyle(
                        fontSize: 14, color: AppColors.secondary(context))),
                const Gap(6),
                Text(award.text, style: const TextStyle(fontSize: 16)),
                if (award != model.awards.last)
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

class _ProfileArea extends ConsumerWidget {
  const _ProfileArea({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(profileNotifierProvider);
    final screenCls = ScreenRef(context).watch(screenProvider).sizeClass;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleText(text: "Profile"),
        AppTimeline(
          isDesktop: (screenCls != ScreenSizeClass.phone),
          profiles: model.profile,
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
    final fontSize = (MediaQuery.of(context).size.width > 768) ? 28.0 : 24.0;
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 24, 0, 16),
      child: Text(
        text,
        style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold),
      ),
    );
  }
}

final Map<String, IconData> faIconMap = {
  "locationDot": FontAwesomeIcons.twitter,
  "github": FontAwesomeIcons.github,
  "appStore": FontAwesomeIcons.appStore,
  "facebook": FontAwesomeIcons.facebook,
  "instagram": FontAwesomeIcons.instagram,
  "laptopCode": FontAwesomeIcons.laptopCode,
  "link": FontAwesomeIcons.link,
};
