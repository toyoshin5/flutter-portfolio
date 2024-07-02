import 'package:flutter_portfolio/widget/budge.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/profile.dart';

part 'profile_provider.g.dart';

@riverpod
class ProfileNotifier extends _$ProfileNotifier {
  @override
  PortfolioModel build() {
    return const PortfolioModel(
      overview: OverviewModel(
        name: '豊田真吾',
        eName: 'Shingo Toyoda',
        hello: 'Hi, I\'m Shingo Toyoda. \nI like Swift, Flutter, Cooking🍳 & Gaming🎮.',
        birthday: '2002/03/22',
        imageUrl: 'https://avatars.githubusercontent.com/u/43494392?v=4',
        position: 'Passionate about Mobile App Development',
        introduction: 'こんにちはこんにちはこんにちはこんにちはこんにちはこんにちは',
        links: [
        LinkModel(
          url: "https://www.google.com",
          faIconName: "locationDot",
          text: "Hokkaido",
        ),
        LinkModel(
          url: "https://github.com",
          faIconName: "github",
          text: "GitHub",
        ),
        LinkModel(
          url: "https://www.apple.com/jp/",
          faIconName: "appStore",
          text: "AppStore",
        ),
        LinkModel(
          url: "https://www.facebook.com",
          faIconName: "facebook",
          text: "Facebook",
        ),
        LinkModel(
          url: "https://www.instagram.com",
          faIconName: "instagram",
          text: "Instagram",
        ),
        LinkModel(
          url: "https:/atcoder.jp",
          faIconName: "laptopCode",
          text: "AtCoder",
        ),
        ],
      ),
      news: [
        NewsModel(
          date: '2021/08/01',
          text: 'Flutterを始めました',
        ),
        NewsModel(
          date: '2021/08/02',
          text: 'Swiftを始めました',
        ),
        NewsModel(
          date: '2021/08/03',
          text: 'Swiftを始めました',
        ),
      ],
      projects: [
        ProjectsModel(
          title: 'ここがタイトル',
          date: '2021/08',
          description: 'やったことやったことやったことやったこと',
          imagePath: 'photocurrency.png',
          budges: [
            BudgeType.flutter,
            BudgeType.swift,
          ], 
        ),
        ProjectsModel(
          title: 'ここがタイトル2',
          date: '2021/08',
          description: 'やったことやったことやったことやったこと',
          imagePath: 'photocurrency.png',
          budges: [
            BudgeType.flutter,
            BudgeType.swift,
          ], 
        ),
        ProjectsModel(
          title: 'ここがタイトルここがタイトルここがタイトルここがタイトルここがタイトル',
          date: '2021/08',
          description: 'やったことやったことやったことやったことやったことやったことやったことやったことやったことやったことやったことやったことやったことやったことやったことやったことやったことやったことやったことやったことやったことやったことやったことやったこと',
          imagePath: 'photocurrency.png',
          budges: [
            BudgeType.flutter,
            BudgeType.swift,
          ], 
        ),
        ProjectsModel(
          title: 'ここがタイトル2',
          date: '2021/08',
          description: 'やったことやったことやったことやったこと',
          imagePath: 'photocurrency.png',
          budges: [
            BudgeType.flutter,
            BudgeType.swift,
          ], 
        ), 
      ],
      skills: [
        SkillsModel(
          language: "Swift",
          languageFull: "Swift",
          level: 5,
        ),
      ],
      awards: [
        AwardsModel(
          date: '2021/08',
          text: 'やったことやったことやったことやったこと',
        ),
        AwardsModel(
          date: '2021/09',
          text: 'やったこと2やったこと2やったこと2やったこと',
        ),
      ],
      profile: [
        ProfileModel(
          date: '2021/08',
          text: 'やったことやったことやったことやったこと',
          faIconName: 'graduationCap',
        ),
         ProfileModel(
          date: '2021/09',
          text: 'やったこと2やったこと2やったこと2やったこと',
          faIconName: 'graduationCap',
        ),
      ],
    );
  }

}
