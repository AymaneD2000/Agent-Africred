import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LineCharte extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Statistiques Globales',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Source : AFRICRED',
          style: TextStyle(
            fontSize: 16,
            fontStyle: FontStyle.italic,
          ),
        ),
        SizedBox(height: 20),
        Expanded(
          child: LineChart(
            LineChartData(
              gridData: FlGridData(show: true),
              titlesData: FlTitlesData(
                topTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    interval: 1,
                    showTitles: true,
                    getTitlesWidget: (value, meta) {
                      const style = TextStyle(
                        color: Color(0xff68737d),
                        fontWeight: FontWeight.bold,
                        fontSize: 11.5,
                      );
                      Widget text;
                      switch (value.toInt()) {
                        case 1:
                          text = Text('Jan', style: style);
                          break;
                        case 2:
                          text = const Text('Fév', style: style);
                          break;
                        case 3:
                          text = const Text('Mar', style: style);
                          break;
                        case 4:
                          text = const Text('Avr', style: style);
                          break;
                        case 5:
                          text = const Text('Mai', style: style);
                          break;
                        case 6:
                          text = const Text('Juin', style: style);
                          break;
                        case 7:
                          text = const Text('Juil', style: style);
                          break;
                        case 8:
                          text = const Text('Aoû', style: style);
                          break;
                        case 9:
                          text = const Text('Sep', style: style);
                          break;
                        case 10:
                          text = const Text('Oct', style: style);
                          break;
                        case 11:
                          text = const Text('Nov', style: style);
                          break;
                        case 12:
                          text = const Text('Déc', style: style);
                          break;
                        default:
                          text = const Text('', style: style);
                          break;
                      }
                      return SideTitleWidget(
                        axisSide: meta.axisSide,
                        child: text,
                      );
                    },
                  ),
                ),
              ),
              borderData: FlBorderData(
                show: true,
                border: Border.all(color: const Color(0xff37434d)),
              ),
              minX: 0,
              maxX: 12,
              minY: 0,
              maxY: 50,
              lineBarsData: [
                LineChartBarData(
                  spots: [
                    FlSpot(0, 0),
                    FlSpot(0, 1),
                    FlSpot(1, 1),
                    FlSpot(1, 20),
                    FlSpot(2, 18),
                    FlSpot(3, 10),
                    FlSpot(4, 12),
                    FlSpot(5, 13),
                    FlSpot(6, 15),
                    FlSpot(7, 25),
                    FlSpot(8, 18),
                    FlSpot(9, 20),
                    FlSpot(10, 22),
                    FlSpot(11, 26),
                    FlSpot(12, 30),
                  ],
                  isCurved: true,
                  color: Colors.blue,
                  barWidth: 5,
                  belowBarData: BarAreaData(
                    show: true,
                    color: Colors.blue.withOpacity(0.3),
                  ),
                  dotData: FlDotData(show: true),
                ),
                LineChartBarData(
                  spots: [
                    FlSpot(1, 22),
                    FlSpot(2, 24),
                    FlSpot(3, 30),
                    FlSpot(4, 28),
                    FlSpot(5, 26),
                    FlSpot(6, 25),
                    FlSpot(7, 40),
                    FlSpot(8, 38),
                    FlSpot(9, 35),
                    FlSpot(10, 32),
                    FlSpot(11, 30),
                    FlSpot(12, 28),
                  ],
                  isCurved: true,
                  color: Colors.green,
                  barWidth: 5,
                  belowBarData: BarAreaData(
                    show: true,
                    color: Colors.green.withOpacity(0.3),
                  ),
                  dotData: FlDotData(show: true),
                ),
              ],
            ),
          ),
        ),
        Gap(15),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LegendItem(
              color: Colors.blue,
              text: 'Comptes 2022',
            ),
            Gap(10),
            LegendItem(
              color: Colors.green,
              text: 'Déblocages 2022',
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LegendItem(
              color: Colors.blue.shade700,
              text: 'Comptes 2023',
            ),
            Gap(10),
            LegendItem(
              color: Colors.green.shade700,
              text: 'Déblocages 2023',
            ),
          ],
        ),
      ],
    );
  }
}

class LegendItem extends StatelessWidget {
  final Color color;
  final String text;

  LegendItem({required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 16,
          height: 16,
          color: color,
        ),
        SizedBox(width: 5),
        Text(text),
      ],
    );
  }
}
