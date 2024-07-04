import 'package:flutter/material.dart';

enum BudgeType {
  flutter,
  swift,
  uikit,
  swiftui,
  kotlin,
  react,
  reactNative,
  unrealengine,
  hackerson,
  contest,
  personal,
  team,
}

class Budge extends StatelessWidget {
  const Budge({
    super.key,
    this.type = BudgeType.flutter,
  });

  final BudgeType type;

  static const Map<BudgeType, String> typeTexts = {
    BudgeType.flutter: "Flutter",
    BudgeType.swift: "Swift",
    BudgeType.uikit: "UIKit",
    BudgeType.swiftui: "SwiftUI",
    BudgeType.kotlin: "Kotlin",
    BudgeType.react: "React",
    BudgeType.reactNative: "ReactNative",
    BudgeType.unrealengine: "UnrealEngine",
    BudgeType.hackerson: "ハッカソン",
    BudgeType.contest: "コンテスト",
    BudgeType.personal: "個人開発",
    BudgeType.team: "チーム開発",
  };

  static const Map<BudgeType, Color> typeColors = {
    BudgeType.flutter: Color(0xff0175C2),
    BudgeType.swift: Color(0xffFA7343),
    BudgeType.uikit: Color(0xff007AFF),
    BudgeType.swiftui: Color(0xff007AFF),
    BudgeType.kotlin: Color(0xff0095D5),
    BudgeType.react: Color(0xff61DAFB),
    BudgeType.reactNative: Color(0xff61DAFB),
    BudgeType.unrealengine: Color(0xff1B4F72),
    BudgeType.hackerson: Color(0xff000000),
    BudgeType.contest: Color(0xff000000),
    BudgeType.personal: Color(0xffFF4500),
    BudgeType.team: Color(0xffFF4500),
  };

  @override
  Widget build(BuildContext context) {
    final String text = typeTexts[type]!;
    final Color color = typeColors[type]!;

    return Container(
      padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 14, color: Colors.white, height: 1.2,fontWeight: FontWeight.bold),
      ),
    );
  }
}
