//assets/favicon.png
import 'package:africredagent/const/colors.dart';
import 'package:africredagent/widgets/myText.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PieChartSample extends StatefulWidget {
  @override
  State<PieChartSample> createState() => _PieChartSampleState();
}

class _PieChartSampleState extends State<PieChartSample> {
  int touchedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          PieChart(
            PieChartData(
              sections: showingSections(),
              centerSpaceRadius: 80,
              sectionsSpace: 2,
              borderData: FlBorderData(show: false),
              pieTouchData: PieTouchData(
                touchCallback: (FlTouchEvent event, pieTouchResponse) {
                  setState(() {
                    if (pieTouchResponse == null ||
                        pieTouchResponse.touchedSection == null) {
                      touchedIndex = -1;
                      return;
                    }
                    touchedIndex =
                        pieTouchResponse.touchedSection!.touchedSectionIndex;
                  });
                },
              ),
            ),
          ),
          Image.asset(
            'assets/favicon.png',
            width: 60,
            height: 60,
          ),
        ],
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(4, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 11.0 : 8.0;
      final radius = isTouched ? 40.0 : 30.0;
      Color allColor = Colors.black;

      switch (i) {
        case 0:
          return PieChartSectionData(
            color: primaryBlue,
            value: 40,
            title: 'Déblocage: 40%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: allColor,
            ),
          );
        case 1:
          return PieChartSectionData(
            color: Color.fromRGBO(252, 185, 44, 1.0),
            value: 23,
            title: 'Encours Global: 23%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: allColor,
            ),
          );
        case 2:
          return PieChartSectionData(
            color: Color.fromRGBO(53, 212, 165, 1.0),
            value: 6.3,
            title: 'Intérêt: 6.3%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: allColor,
            ),
          );
        case 3:
          return PieChartSectionData(
            color: primaryPurple,
            value: 30.7,
            title: 'Capital: 30.7%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: allColor,
            ),
          );
        default:
          throw Error();
      }
    });
  }
}
