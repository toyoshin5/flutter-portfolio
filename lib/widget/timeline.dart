import 'package:flutter/material.dart';
import 'package:flutter_portfolio/models/profile.dart';
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
  });
  final List<ProfileModel> profiles;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (final profile in profiles) 
          buildTimelineTile(context, profile, (profile == profiles.first) ? TimeLineStyle.strat : (profile == profiles.last) ? TimeLineStyle.end : TimeLineStyle.normal),
      ],
    );
  }

  Widget buildTimelineTile(BuildContext context, ProfileModel profile,
      TimeLineStyle style) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 21),
            child: Text(
              profile.date,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
          const Gap(10),
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
                width: 30,
                height: 30,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                child: const Center(
                  child: FaIcon(
                    FontAwesomeIcons.graduationCap,
                    size: 15,
                    color: Colors.white,
                  ),
                )
              ),
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
              margin: const EdgeInsets.fromLTRB(0, 7, 0, 20),
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: AppColors.backGround(context),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                profile.text,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
