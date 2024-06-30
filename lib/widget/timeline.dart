import 'package:flutter/material.dart';
import 'package:flutter_portfolio/styles/app_colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

enum TimeLineStyle {
  strat,
  normal,
  end,
}

class AppTimeline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildTimelineTile(context, style: TimeLineStyle.strat),
        buildTimelineTile(context),
        buildTimelineTile(context),
        buildTimelineTile(context),
        buildTimelineTile(context, style: TimeLineStyle.end),
      ],
    );
  }

  Widget buildTimelineTile(BuildContext context,
      {TimeLineStyle style = TimeLineStyle.normal}) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 21),
            child: Text(
              '2022/01',
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
                'ここにテキストここにテキストここにテキストここにテキストここにテキストここにテキストここにテキストここにテキスト',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
