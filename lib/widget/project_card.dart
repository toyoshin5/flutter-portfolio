import 'package:flutter/material.dart';
import 'package:flutter_portfolio/models/profile.dart';
import 'package:flutter_portfolio/styles/app_colors.dart';
import 'package:flutter_portfolio/widget/budge.dart';
import 'package:flutter_portfolio/widget/link_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required this.project,
  });

  final ProjectsModel project;

  @override
  Widget build(BuildContext context) {
    return Container(
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
            child: Image.asset(
              "assets/images/${project.imagePath}",
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(project.title,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold)),
                const Gap(8),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    for (final budge in project.budges)
                      Budge(type: budge),
                  ],
                ),
                const Gap(8),
                Text(project.description,
                    style: const TextStyle(fontSize: 16)),
                const Gap(8),
                const LinkButton(
                    width: 120,
                    height: 35,
                    url: "https://www.google.com",
                    faIcon: FontAwesomeIcons.link,
                    text: "詳しく見る"),
                const Gap(8),
                Text(project.date),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
