import 'package:flutter/material.dart';
import 'package:flutter_portfolio/models/profile.dart';
import 'package:flutter_portfolio/pages/home_page.dart';
import 'package:flutter_portfolio/styles/app_colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

enum TimeLineStyle {
  strat,
  normal,
  end,
}

class AppTimeline extends StatelessWidget {
  const AppTimeline({
    super.key,
    required this.profiles,
    this.isDesktop = false,
  });
  final List<ProfileModel> profiles;
  final bool isDesktop;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (final profile in profiles)
          buildTimelineTile(
              context,
              profile,
              (profile == profiles.first)
                  ? TimeLineStyle.strat
                  : (profile == profiles.last)
                      ? TimeLineStyle.end
                      : TimeLineStyle.normal),
      ],
    );
  }

  Widget buildTimelineTile(
      BuildContext context, ProfileModel profile, TimeLineStyle style) {
    final dateFontSize = isDesktop ? 16.0 : 14.0;
    final spacing = isDesktop ? 40.0 : 20.0;
    const iconSize = 30.0;

    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 80,
            padding: const EdgeInsets.only(top: 21),
            child: Text(
              profile.date,
              style: TextStyle(
                  fontSize: dateFontSize, fontWeight: FontWeight.bold),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 3,
                height: 10,
                color: (style == TimeLineStyle.strat)
                    ? Colors.transparent
                    : AppColors.secondary(context),
              ),
              const Gap(4),
              Container(
                  width: iconSize,
                  height: iconSize,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: FaIcon(
                      faIconMap[profile.faIconName] ?? FontAwesomeIcons.check,
                      size: iconSize / 2.0,
                      color: Colors.white,
                    ),
                  )),
              const Gap(4),
              Expanded(
                child: Container(
                  width: 3,
                  color: (style == TimeLineStyle.end)
                      ? Colors.transparent
                      : AppColors.secondary(context),
                ),
              ),
            ],
          ),
          const Gap(10),
          Flexible(
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 5, 0, spacing),
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: AppColors.backGround(context),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                profile.text,
                style: const TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
