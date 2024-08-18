import 'package:flutter_portfolio/widget/budge.dart';
import "package:intl/intl.dart";
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/profile.dart';

part 'profile_notifier.g.dart';

@riverpod
class ProfileNotifier extends _$ProfileNotifier {
  @override
  PortfolioModel build() {
    return const PortfolioModel(
      overview: OverviewModel(
        name: '豊田真吾',
        eName: 'Shingo Toyoda',
        hello: 'Hi, I\'m Shingo Toyoda. \nI like Swift, Flutter, Cooking & Gaming.',
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
          date: '2024/08',
          text: 'LINEヤフーのインターンシップに参加しました',
        ),
        NewsModel(
          date: '2024/08',
          text: 'mybestのインターンシップに参加しました',
        ),
        NewsModel(
          date: '2024/07',
          text: 'ポートフォリオサイトを作成しました',
        ),
        NewsModel(
          date: '2024/07',
          text: 'AtCoderで緑レートに到達しました',
        ),
        NewsModel(
          date: '2024/04',
          text: 'ゆめみパスポート(iOSエンジニア)に合格しました',
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
          url: 'https://apps.apple.com/jp/app/twinotes-sns%E9%A2%A8%E3%83%A1%E3%83%A2/id1583565949',
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
          url:'https://apps.apple.com/jp/app/umap-%E3%81%86%E3%81%BE%E3%81%A3%E3%81%B7/id6471849198',
          budges: [
            BudgeType.flutter,
            BudgeType.team,
            BudgeType.hackerson,
          ],
        ), 
        ProjectsModel(
          title: 'ARメジャー',
          date: '2018/04',
          description: 'カメラを用いて2点間の距離を測るアプリです。一見iPhoneの計測アプリと同じ機能のように見えますが、実はAppleが計測アプリを公開する前に作成しました。',
          imagePath: 'armeasure.png',
          url:'https://github.com/toyoshin5/AR-Measure',
          budges: [
            BudgeType.swift,
            BudgeType.uikit,
            BudgeType.personal,
          ], 
        ), 
        ProjectsModel(
          title: 'Rakupe',
          date: '2019/03',
          description: '頭の動きでページをめくるPDFリーダーです。電車のつり革などで片手が封じられている状況でも頭を使ってメージをめくることができます。学内ハッカソンで作成しました。',
          imagePath: 'rakupe.png',
          url:'https://github.com/toyoshin5/Rakupe',
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
          url:'https://web-ext.u-aizu.ac.jp/pc-concours/2019/final/f_photo_mobile.html',
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
          url:'https://youtu.be/0Zpa3UZzZDk',
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
          url:'https://spice-test-project-d3472.web.app/',
          budges: [
            BudgeType.react,
            BudgeType.team,
            BudgeType.hackerson,
          ], 
        ), 
        ProjectsModel(
          title: 'RSSimply',
          date: '2023/04',
          description: 'iPadのPlaygroundsだけを使って開発してみました。登録したRSSフィードを取得して記事を表示するアプリです。',
          imagePath: 'rssimply.png',
          url:'https://apps.apple.com/jp/app/rssimply/id6448121530',
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
          url:'https://github.com/toyoshin5/AppleMusicClone-with-SwiftUI',
          budges: [
            BudgeType.swift,
            BudgeType.uikit,
            BudgeType.swiftui,
            BudgeType.flutter,
            BudgeType.reactNative,
            BudgeType.personal,
          ], 
        ), 
        ProjectsModel(
          title: 'ミラーサイネージを用いた歯磨き支援システム',
          date: '2024/2',
          description: 'AKATSUKIプロジェクトにて提案した作品です。鏡の前に立って歯磨きを行うことで適切な歯磨きを指南し、カメラを通して歯磨きのチェックを行うアプリケーションを作成しました。鏡の画面上に歯磨きの14手順が左下、左下裏、左上...のように順番に表示されます。利用者は鏡の前で各手順15秒ずつ歯を磨きます。磨いている間、鏡内蔵のカメラを用いて利用者が歯磨きをしているか監視し、途中で歯磨きを止めるとタイマーが止まり、歯磨きの再開を促します。口内のあらゆる歯を磨けるようにサポートすることで、将来の虫歯や歯周病予防に役立ちます。',
          imagePath: 'brashmirror.jpeg',
          budges: [
            BudgeType.kotlin,
            BudgeType.team,
          ], 
        ), 
        ProjectsModel(
          title: '通貨換算カメラ',
          date: '2024/03',
          description: 'カメラを値札にかざすだけで39カ国の通貨を換算してくれるアプリです。UXやアニメーションにこだわりました。MVVMアーキテクチャを採用してみたりもしました。',
          imagePath: 'photocurrency.jpeg',
          url:'https://apps.apple.com/jp/app/photocurrency-%E9%80%9A%E8%B2%A8%E5%A4%89%E6%8F%9B%E3%82%AB%E3%83%A1%E3%83%A9/id6479285476',
          budges: [
            BudgeType.swift,
            BudgeType.swiftui,
            BudgeType.personal,
          ], 
        ), 
      ],
      skills: [
        SkillsModel(
          language: "Swift",
          languageFull: "Swift",
          level: 5,
        ),
        SkillsModel(
          language: "Flutter",
          languageFull: "Flutter (Dart)",
          level: 5,
        ),
        SkillsModel(
          language: "Python",
          languageFull: "Python",
          level: 4,
        ),
        SkillsModel(
          language: "C++",
          languageFull: "C/C++",
          level: 4,
        ),
        SkillsModel(
          language: "Kotlin",
          languageFull: "Kotlin",
          level: 3,
        ),
        SkillsModel(
          language: "C#",
          languageFull: "C#",
          level: 3,
        ),
        SkillsModel(
          language: "JS",
          languageFull: "JavaScript",
          level: 2,
        ),
        SkillsModel(
          language: "Arduino",
          languageFull: "Arduino",
          level: 2,
        ),
        SkillsModel(
          language: "Ruby",
          languageFull: "Ruby",
          level: 1,
        ),
        SkillsModel(
          language: "lua",
          languageFull: "lua",
          level: 1,
        ),
        SkillsModel(
          language: "Go",
          languageFull: "Go",
          level: 1,
        ),
      ],
      awards: [
        AwardsModel(
          date: '2019/05',
          text: '基本情報技術者試験 合格',
        ),
        AwardsModel(
          date: '2019/11',
          text: 'パソコン甲子園2019 モバイル部門 グランプリ',
        ),
        AwardsModel(
          date: '2021/01',
          text: 'TOEIC Listening & Reading 750点 取得',
        ),
        AwardsModel(
          date: '2022/03',
          text: '鈴鹿高専電子情報工学科 卒業研究発表会 ベストプレゼンテーション賞',
        ),
        AwardsModel(
          date: '2022/09',
          text: '技育展2022 優秀賞',
        ),
        AwardsModel(
          date: '2023/11',
          text: 'JPHacks2023 ,FinalistAward,イノベータ認定,企業賞',
        ),
        AwardsModel(
          date: '2024/03',
          text: '北海道大学工学部情報エレクトロニクス学科 コース長賞',
        ),
      ],
      profile: [
        ProfileModel(
          date: '2002/3',
          text: '愛知県小牧市で生まれる',
          faIconName: 'person',
        ),
        ProfileModel(
          date: '2017/3',
          text: '三重県内の公立中学校を卒業',
          faIconName: 'graduationCap',
        ),
        ProfileModel(
          date: '2017/4',
          text: '鈴鹿工業高等専門学校 電子情報工学科 入学',
          faIconName: 'person',
        ),
        ProfileModel(
          date: '2022/3',
          text: '鈴鹿工業高等専門学校 電子情報工学科 卒業',
          faIconName: 'graduationCap',
        ),
        ProfileModel(
          date: '2022/4',
          text: '北海道大学 工学部 情報エレクトロニクス学科 入学',
          faIconName: 'person',
        ),
        ProfileModel(
          date: '2024/3',
          text: '北海道大学 工学部 情報エレクトロニクス学科 卒業',
          faIconName: 'graduationCap',
        ),
        ProfileModel(
          date: '2024/4',
          text: '北海道大学 情報科学院 修士課程 入学',
          faIconName: 'person',
        ),
      ],
    );
  }

  int get age {
    final now = DateTime.now();
    final birth = DateFormat('yyyy/MM/dd').parse(state.overview.birthday);
    final age = now.year - birth.year;
    if (now.month < birth.month) {
      return age - 1;
    } else if (now.month == birth.month) {
      if (now.day < birth.day) {
        return age - 1;
      }
    }
    return age;
  }
}
