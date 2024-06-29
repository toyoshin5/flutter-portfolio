import 'package:flutter/material.dart';

enum BudgeType {
  flutter,
  swift,
  kotlin,
  hackerson,
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
    BudgeType.kotlin: "Kotlin",
    BudgeType.hackerson: "ハッカソン",
    BudgeType.personal: "個人開発",
    BudgeType.team: "チーム開発",
  };

  static const Map<BudgeType, Color> typeColors = {
    BudgeType.flutter: Color(0xff0175C2),
    BudgeType.swift: Color(0xffFA7343),
    BudgeType.kotlin: Color(0xff0095D5),
    BudgeType.hackerson: Color(0xff000000),
    BudgeType.personal: Color(0xffFFD700),
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
        style: const TextStyle(fontSize: 14, color: Colors.white),
      ),
    );
  }
}
