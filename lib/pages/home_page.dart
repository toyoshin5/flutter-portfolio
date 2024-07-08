import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/providers/cook_path_notifier.dart';
import 'package:flutter_portfolio/screen_pod.dart';
import 'package:flutter_portfolio/widget/gallary_photo_view_wrapper.dart';
import 'package:flutter_portfolio/widget/graph.dart';
import 'package:flutter_portfolio/widget/project_card.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

import 'package:flutter_portfolio/providers/profile_notifier.dart';
import 'package:flutter_portfolio/styles/app_colors.dart';
import 'package:flutter_portfolio/widget/circle_image.dart';
import 'package:flutter_portfolio/widget/link_button.dart';
import 'package:flutter_portfolio/widget/timeline.dart';
import 'package:typewritertext/typewritertext.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(profileNotifierProvider);
    final headerHeight = min(MediaQuery.of(context).size.height - 200,
        MediaQuery.of(context).size.width);
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
                    image: AssetImage("assets/images/background.jpeg")),
              ),
            ),
            SingleChildScrollView(
              child: Stack(
                alignment: AlignmentDirectional.topCenter,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _HelloText(
                          headerHeight: headerHeight,
                          text: model.overview.hello),
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
    return Column(
      children: [
        Row(
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
                    const Gap(24),
                    const _SNSArea(),
                    if (screenCls == ScreenSizeClass.desktop)
                      const Divider(height: 48)
                    else
                      const Gap(24),
                    const _IntroArea(),
                    if (screenCls != ScreenSizeClass.desktop) const _NewsArea(),
                    const _ProjectsArea(),
                    const _SkillArea(),
                    const _AwardArea(),
                    const _ProfileArea(),
                    const _CookArea(),
                  ],
                ),
              ),
            ),
            if (screenCls == ScreenSizeClass.desktop) ...[
              const Gap(16),
              const Flexible(
                flex: 1,
                child: _NewsArea(
                  separated: true,
                ),
              ),
            ]
          ],
        ),
        const _AboutThisSiteArea(),
      ],
    );
  }
}

class _MyNameArea extends ConsumerWidget {
  const _MyNameArea();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(profileNotifierProvider);
    final notifier = ref.watch(profileNotifierProvider.notifier);
    final screenCls = ScreenRef(context).watch(screenProvider).sizeClass;
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            model.overview.eName,
            style: TextStyle(
                fontSize: (screenCls != ScreenSizeClass.phone) ? 34 : 28,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "${model.overview.name} (${notifier.age})",
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
  const _SNSArea();

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
  const _IntroArea();

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
    this.separated = false,
  });
  final bool separated;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(profileNotifierProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleText(text: "NEWS 📰"),
        if (separated)
          for (final news in model.news) ...[
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
                  Text(news.date,
                      style: TextStyle(
                          fontSize: 14, color: AppColors.secondary(context))),
                  Text(news.text, style: const TextStyle(fontSize: 16)),
                  const Gap(16),
                ],
              ),
            ),
            const Gap(20),
          ]
        else
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
  const _ProjectsArea();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(profileNotifierProvider);
    //画面の幅が450px以上の場合は2列にする
    final isTwoColumn = MediaQuery.of(context).size.width > 550;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleText(text: "PROJECTS 💻"),
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
  const _SkillArea();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(profileNotifierProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleText(text: "SKILLS 💪"),
        SkillGraph(
          skills: model.skills,
          height: 600,
        ),
      ],
    );
  }
}

class _AwardArea extends ConsumerWidget {
  const _AwardArea();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(profileNotifierProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleText(text: "AWARDS 🏆"),
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
  const _ProfileArea();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(profileNotifierProvider);
    final screenCls = ScreenRef(context).watch(screenProvider).sizeClass;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleText(text: "Profile 🕺"),
        AppTimeline(
          isDesktop: (screenCls != ScreenSizeClass.phone),
          profiles: model.profile,
        ),
      ],
    );
  }
}

class _CookArea extends ConsumerWidget {
  const _CookArea({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var asyncValue = ref.watch(cookPathNotifierProvider);
    return asyncValue.when(
      data: (data) => _buildCookGrid(data, context),
      loading: () => const CircularProgressIndicator(),
      error: (error, stack) => Text("Error: $error"),
    );
  }

  Column _buildCookGrid(List<String> data, BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleText(text: "Cooking 🍳"),
        const Gap(16),
        GridView.count(
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          crossAxisCount: 3,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: List.generate(data.length, (index) {
            return Hero(
              tag: data[index],
              child: GestureDetector(
                onTap: () => openGallery(context,data,index),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: AssetImage(data[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
        const Gap(16),
      ],
    );
  }

  void openGallery(BuildContext context, List<String> data,int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => GalleryPhotoViewWrapper(
          galleryItems: List.generate(data.length,
              (index) => data[index]),
          initialIndex: index,
        ),
      ),
    );
  }
}

class _AboutThisSiteArea extends StatelessWidget {
  const _AboutThisSiteArea();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              const Gap(128),
              const Text(
                "このポートフォリオはFlutterで作成してみました",
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("/license");
                  },
                  child: const Text("ライセンス情報")),
              const Text(
                "© 2024 Shingo Toyoda All Rights Reserved.",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              const Gap(64),
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
      padding: const EdgeInsets.fromLTRB(0, 48, 0, 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

final Map<String, IconData> faIconMap = {
  "locationDot": FontAwesomeIcons.locationDot,
  "github": FontAwesomeIcons.github,
  "appStore": FontAwesomeIcons.appStore,
  "facebook": FontAwesomeIcons.facebook,
  "instagram": FontAwesomeIcons.instagram,
  "laptopCode": FontAwesomeIcons.laptopCode,
  "link": FontAwesomeIcons.link,
  "graduationCap": FontAwesomeIcons.graduationCap,
  "person": FontAwesomeIcons.person,
};

class _HelloText extends StatelessWidget {
  const _HelloText({
    required this.headerHeight,
    required this.text,
  });

  final double headerHeight;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: headerHeight,
      padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
      child: Center(
        child: TypeWriter.text(
          text,
          alignment: Alignment.center,
          textAlign: TextAlign.center,
          softWrap: true,
          style: const TextStyle(
            color: Colors.white,
            height: 1.8,
            fontSize: 24.0,
            fontFamily: "SFMono",
          ),
          duration: const Duration(milliseconds: 130),
        ),
      ),
    );
  }
}
