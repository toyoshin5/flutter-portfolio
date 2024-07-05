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
        introduction: 'こんにちは、北海道大学情報科学院に所属している豊田真吾です。\n趣味は色々ありますが、SwiftとFlutterを使ってアプリ開発をすることが好きです。\n\nここでは小さなものから大きなものまで、私が今までやってきたあれこれについて紹介してます。\nこのサイトを通して、私のことについてちょっとでも知ってもらえたらうれしいです。\n\nそういえば、ダークモードのテーマも用意しています。眩しいのがイヤなときは端末のダークモードをONにしてご覧くださいね。',
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
          text: 'ポートフォリオサイトを作成しました',
        ),
        NewsModel(
          date: '2024/07',
          text: 'AtCoderで緑レートに到達しました',
        ),
        NewsModel(
          date: '2024/03',
          text: 'PhotoCurrency - 通貨変換カメラを配信開始しました',
        ),
        NewsModel(
          date: '2023/11',
          text: 'Umap(うまっぷ)を配信開始しました',
        ),
      ],
      projects: [
        ProjectsModel(
          title: 'TwiNotes',
          date: '2021/08',
          description: 'X風のUIのメモ&リマインダーアプリです。すべてのメモには木構造のようにリプライを繋げられることが特徴です。日本語と英語に対応しています。AppStoreにて約10万DL。',
          imagePath: 'twinotes.jpeg',
          budges: [
            BudgeType.swift,
            BudgeType.uikit,
            BudgeType.personal,
          ], 
        ),
        ProjectsModel(
          title: 'Umap(うまっぷ)',
          date: '2023/08',
          description: 'これから行ってみたい飲食店や行った外食の思い出を残して自分だけの”ごはんマップ”を作れるアプリです。JPHacksというハッカソンで作成し、4人チームのリーダを努めました。GitHubを使ったissue管理やCI/CDを初めて活用しました。',
          imagePath: 'umap.jpeg',
          budges: [
            BudgeType.flutter,
            BudgeType.team,
            BudgeType.hackerson,
          ],
        ), 
        ProjectsModel(
          title: 'ARメジャー',
          date: '2018/04',
          description: 'iPhoneの計測アプリのようにカメラを用いて2点間の距離を測るアプリですが、Appleが計測アプリを公開する前に作成しました。',
          imagePath: 'armeasure.png',
          budges: [
            BudgeType.swift,
            BudgeType.uikit,
          ], 
        ), 
        ProjectsModel(
          title: 'Rakupe',
          date: '2019/03',
          description: '頭の動きでページをめくるPDFリーダーです。電車のつり革などで片手が封じられている状況でも頭を使ってメージをめくることができます。学内ハッカソンで作成しました。',
          imagePath: 'rakupe.png',
          budges: [
            BudgeType.swift,
            BudgeType.uikit,
            BudgeType.team,
            BudgeType.hackerson,
          ], 
        ), 
        ProjectsModel(
          title: 'COINs!',
          date: '2019/11',
          description: '外国人観光客向けに日本での現金の最適な払い方を提案するアプリです。レジなどで店員の会計金額の声をマイクで録音し、財布が最も軽くなる支払い方を指南します。初めてのチーム開発経験として教授やメンバー相談しながら開発を進めました。',
          imagePath: 'coins.png',
          budges: [
            BudgeType.kotlin,
            BudgeType.team,
            BudgeType.contest,

          ], 
        ),
        ProjectsModel(
          title: 'PhantomTale',
          date: '2021/01',
          description: 'UnrealEngine5を使って作成したVRアクションゲームです。高専の創造工学の授業で友達と6人で制作しました。操作キャラ周りを担当し、リアルな弓の射撃体験を実装に落とし込んでみました。',
          imagePath: 'phantomtale.png',
          budges: [
            BudgeType.unrealengine,
            BudgeType.team,
          ], 
        ),
        ProjectsModel(
          title: 'プロ棋士サーバ',
          date: '2022/09',
          description: '対面で行う囲碁の対局で、対局時計と棋譜の管理を自動化してくれるアプリです。ノートパソコンの内カメラを使って盤面を映すことで、現在の盤面の様子を自動で記録することができます。技育展2022に出展。',
          imagePath: 'proxy.png',
          budges: [
            BudgeType.flutter,
            BudgeType.swift,
          ], 
        ), 
        ProjectsModel(
          title: 'RSSimply',
          date: '2023/04',
          description: 'iPadのPlaygroundsだけを使って開発してみました。登録したRSSフィードを取得して記事を表示するアプリです。',
          imagePath: 'rssimply.png',
          budges: [
            BudgeType.swift,
            BudgeType.swiftui,
            BudgeType.personal,
          ], 
        ), 

        ProjectsModel(
          title: 'AppleMusicClone',
          date: '2023/12',
          description: 'AppleMusicのアルバム画面のUIを、様々なプラットフォームで再現して開発体験やアプリの操作性などを比較してみました。NavigationBarのブラーやスクロールの感覚など、細かい違いを実感できておもしろかったです。',
          imagePath: 'applemusicclone.png',
          budges: [
            BudgeType.swift,
            BudgeType.uikit,
            BudgeType.swiftui,
            BudgeType.flutter,
            BudgeType.reactNative,
          ], 
        ), 
        ProjectsModel(
          title: '通貨換算カメラ',
          date: '2024/03',
          description: 'カメラを値札にかざすだけで39カ国の通貨を換算してくれるアプリです。UXやアニメーションにこだわりました。MVVMアーキテクチャを採用してみたりもしました。',
          imagePath: 'photocurrency.jpeg',
          budges: [
            BudgeType.swift,
            BudgeType.swiftui,
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
