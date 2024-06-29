import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/styles/app_colors.dart';

class BarChartSample1 extends StatefulWidget {
  BarChartSample1({super.key});

  List<Color> get availableColors => const <Color>[];

  final Color barBackgroundColor = Colors.white;
  final Color barColor = Colors.blue;
  final Color touchedBarColor = Colors.blue.shade300;

  @override
  State<StatefulWidget> createState() => BarChartSample1State();
}

class BarChartSample1State extends State<BarChartSample1> {
  final Duration animDuration = const Duration(milliseconds: 250);

  int touchedIndex = -1;
  final barNobiru = 0.2;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: RotationTransition(
        turns: const AlwaysStoppedAnimation(90 / 360),
        child: BarChart(
          mainBarData(),
          swapAnimationDuration: animDuration,
        ),
      ),
    );
  }

  BarChartGroupData makeGroupData(
    int x,
    double y, {
    bool isTouched = false,
    Color? barColor,
    double width = 22,
    List<int> showTooltips = const [],
  }) {
    barColor ??= widget.barColor;
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          toY: isTouched ? y + barNobiru : y,
          color: isTouched ? widget.touchedBarColor : barColor,
          width: width,
          borderSide: isTouched
              ? const BorderSide(color: Colors.white, width: 2)
              : const BorderSide(color: Colors.white, width: 0),
          backDrawRodData: BackgroundBarChartRodData(
            show: true,
            toY: 6,
            color: widget.barBackgroundColor,
          ),
        ),
      ],
      showingTooltipIndicators: showTooltips,
    );
  }

  List<BarChartGroupData> showingGroups() => List.generate(11, (i) {
        switch (i) {
          case 0:
            return makeGroupData(0, 5, isTouched: i == touchedIndex);
          case 1:
            return makeGroupData(1, 5, isTouched: i == touchedIndex);
          case 2:
            return makeGroupData(2, 4, isTouched: i == touchedIndex);
          case 3:
            return makeGroupData(3, 4, isTouched: i == touchedIndex);
          case 4:
            return makeGroupData(4, 3, isTouched: i == touchedIndex);
          case 5:
            return makeGroupData(5, 3, isTouched: i == touchedIndex);
          case 6:
            return makeGroupData(6, 2, isTouched: i == touchedIndex);
          case 7:
            return makeGroupData(7, 2, isTouched: i == touchedIndex);
          case 8:
            return makeGroupData(8, 1, isTouched: i == touchedIndex);
          case 9:
            return makeGroupData(9, 1, isTouched: i == touchedIndex);
          case 10:
            return makeGroupData(10, 1, isTouched: i == touchedIndex);
          default:
            return throw Error();
        }
      });

  BarChartData mainBarData() {
    return BarChartData(
      barTouchData: BarTouchData(
        touchTooltipData: BarTouchTooltipData(
          getTooltipColor: (_) => Colors.blueGrey,
          tooltipHorizontalAlignment: FLHorizontalAlignment.center,
          tooltipMargin: -180,
          rotateAngle: -90,
          getTooltipItem: (group, groupIndex, rod, rodIndex) {
            String language;
            String level;
            switch (group.x) {
              case 0:
                language = 'Swift';
                break;
              case 1:
                language = 'Dart(Flutter)';
                break;
              case 2:
                language = 'Python';
                break;
              case 3:
                language = 'C++';
                break;
              case 4:
                language = 'Java/Kotlin';
                break;
              case 5:
                language = 'C#';
                break;
              case 6:
                language = 'JavaScript';
                break;
              case 7:
                language = 'Arduino';
                break;
              case 8:
                language = 'Ruby';
                break;
              case 9:
                language = 'lua';
                break;
              case 10:
                language = 'Go';
                break;
              default:
                throw Error();
            }

            switch(rod.toY - barNobiru)
            {
              case 5:
                level = '完全に理解している';
                break;
              case 4:
                level = 'けっこうできる';
                break;
              case 3:
                level = 'まあまあできる';
                break;
              case 2:
                level = 'すこしできる';
                break;
              case 1:
                level = 'さわったことある';
                break;
              default:
                throw Error();
            }

            return BarTooltipItem(
              '$language\n',
              const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: level,
                  style: const TextStyle(
                    color: Colors.white, //widget.touchedBarColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
              textAlign: TextAlign.center,
            );
          },
        ),
        touchCallback: (FlTouchEvent event, barTouchResponse) {
          setState(() {
            if (!event.isInterestedForInteractions ||
                barTouchResponse == null ||
                barTouchResponse.spot == null) {
              touchedIndex = -1;
              return;
            }
            touchedIndex = barTouchResponse.spot!.touchedBarGroupIndex;
          });
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: getTitles,
            reservedSize: 90,
          ),
        ),
        leftTitles: const AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: showingGroups(),
      gridData: const FlGridData(show: false),
    );
  }

  Widget getTitles(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 16,
    );
    Widget text;
    switch (value.toInt()) {
      case 0:
        text = const Text('Swift', style: style);
        break;
      case 1:
        text = const Text('Flutter', style: style);
        break;
      case 2:
        text = const Text('Python', style: style);
        break;
      case 3:
        text = const Text('C++', style: style);
        break;
      case 4:
        text = const Text('Kotlin', style: style);
        break;
      case 5:
        text = const Text('C#', style: style);
        break;
      case 6:
        text = const Text('JS', style: style);
        break;
      case 7:
        text = const Text('Arduino', style: style);
        break;
      case 8:
        text = const Text('Ruby', style: style);
        break;
      case 9:
        text = const Text('lua', style: style);
        break;
      case 10:
        text = const Text('Go', style: style);
        break;
      default:
        throw Error();
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 35,
      child: text,
      angle: -pi / 2,
    );
  }
}
