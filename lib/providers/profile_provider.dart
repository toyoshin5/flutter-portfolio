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
        introduction: 'こんにちは、豊田真吾と申します。\n北海道大学情報科学院に通っています。\n趣味は色々ありますが、SwiftとFlutterを使ってアプリ開発をすることが好きです。\n\nここでは小さなものから大きなものまで、私が今までやってきたあれこれについて紹介してます。\nこのサイトを通して、私のことについてちょっとでも知ってもらえたらうれしいです。\n\nそういえば、ダークモードのテーマも用意しています。眩しいのがイヤなときは端末のダークモードをONにしてご覧くださいね。',
        links: [
        LinkModel(
          url: "https://maps.app.goo.gl/BjNmZUzCCMNrpSGx7",
          faIconName: "locationDot",
          text: "Hokkaido",
        ),
        LinkModel(
          url: "https://github.com/toyoshin5",
          faIconName: "github",
          text: "GitHub",
        ),
        LinkModel(
          url: "https://apps.apple.com/jp/developer/toyoda-shingo/id1583565951",
          faIconName: "appStore",
          text: "AppStore",
        ),
        LinkModel(
          url: "https://www.facebook.com/profile.php?id=100009908073150&locale=ja_JP",
          faIconName: "facebook",
          text: "Facebook",
        ),
        LinkModel(
          url: "https://www.instagram.com/toyoshin_",
          faIconName: "instagram",
          text: "Instagram",
        ),
        LinkModel(
          url: "https://atcoder.jp/users/Toyoshin",
          faIconName: "laptopCode",
          text: "AtCoder",
        ),
        ],
      ),
      news: [
        NewsModel(
          date: '2024/07',
          text: 'ポートフォリオサイトを作成しました👍',
        ),
        NewsModel(
          date: '2024/07',
          text: 'AtCoderで緑レートに到達しました',
        ),
        NewsModel(
          date: '2024/07',
          text: 'Swiftを始めました',
        ),
      ],
      projects: [
        ProjectsModel(
          title: 'TwiNotes',
          date: '2021/08',
          description: 'X風のUIのメモ&リマインダーアプリです。10万ダウンロードを達成しています。',
          imagePath: 'photocurrency.png',
          budges: [
            BudgeType.personal,
            BudgeType.swift,
            BudgeType.uikit,
          ], 
        ),
        ProjectsModel(
          title: 'ここがタイトル2',
          date: '2021/08',
          description: 'やったことやったことやったことやったこと',
          imagePath: 'photocurrency.png',
          budges: [
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
