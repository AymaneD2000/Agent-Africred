import 'package:africredagent/widgets/myText.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Chart2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            'Statistiques de l\'année 2024',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text('Source : AFRICRED'),
          SizedBox(height: 20),
          Expanded(
            child: BarChart(
              BarChartData(
                barGroups: _getBarGroups(),
                titlesData: FlTitlesData(
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (double value, TitleMeta meta) {
                        const style = TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        );
                        Widget text;
                        switch (value.toInt()) {
                          case 0:
                            text = Text('Jan', style: style);
                            break;
                          case 1:
                            text = Text('Fév', style: style);
                            break;
                          case 2:
                            text = Text('Mar', style: style);
                            break;
                          case 3:
                            text = Text('Avr', style: style);
                            break;
                          case 4:
                            text = Text('Mai', style: style);
                            break;
                          case 5:
                            text = Text('Jui', style: style);
                            break;
                          case 6:
                            text = Text('Juil', style: style);
                            break;
                          case 7:
                            text = Text('Aoû', style: style);
                            break;
                          case 8:
                            text = Text('Sep', style: style);
                            break;
                          case 9:
                            text = Text('Oct', style: style);
                            break;
                          case 10:
                            text = Text('Nov', style: style);
                            break;
                          case 11:
                            text = Text('Déc', style: style);
                            break;
                          default:
                            text = Text('', style: style);
                            break;
                        }
                        return SideTitleWidget(
                          axisSide: meta.axisSide,
                          space: 8.0, // margin top
                          child: text,
                        );
                      },
                    ),
                  ),
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (double value, TitleMeta meta) {
                        const style = TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        );
                        return Text(
                          value % 10 == 0 ? value.toInt().toString() : '',
                          style: style,
                        );
                      },
                    ),
                  ),
                ),
                borderData: FlBorderData(show: false),
                extraLinesData: ExtraLinesData(
                  extraLinesOnTop: true,
                  horizontalLines: [
                    HorizontalLine(
                      y: 19,
                      color: Colors.blue,
                      strokeWidth: 2,
                      dashArray: [5, 5],
                      label: HorizontalLineLabel(
                        show: true,
                        alignment: Alignment.topLeft,
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    HorizontalLine(
                      y: 14,
                      color: Colors.blue,
                      strokeWidth: 2,
                      dashArray: [5, 5],
                      label: HorizontalLineLabel(
                        show: true,
                        alignment: Alignment.topLeft,
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    HorizontalLine(
                      y: 7,
                      color: Colors.blue,
                      strokeWidth: 2,
                      dashArray: [5, 5],
                      label: HorizontalLineLabel(
                        show: true,
                        alignment: Alignment.topLeft,
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<BarChartGroupData> _getBarGroups() {
    return [
      BarChartGroupData(
          x: 0, barRods: [BarChartRodData(toY: 40, color: Colors.green)]),
      BarChartGroupData(
          x: 1, barRods: [BarChartRodData(toY: 45, color: Colors.green)]),
      BarChartGroupData(
          x: 2, barRods: [BarChartRodData(toY: 20, color: Colors.green)]),
      BarChartGroupData(
          x: 3, barRods: [BarChartRodData(toY: 0, color: Colors.green)]),
      BarChartGroupData(
          x: 4, barRods: [BarChartRodData(toY: 0, color: Colors.green)]),
      BarChartGroupData(
          x: 5, barRods: [BarChartRodData(toY: 0, color: Colors.green)]),
      BarChartGroupData(
          x: 6, barRods: [BarChartRodData(toY: 0, color: Colors.green)]),
      BarChartGroupData(
          x: 7, barRods: [BarChartRodData(toY: 0, color: Colors.green)]),
      BarChartGroupData(
          x: 8, barRods: [BarChartRodData(toY: 0, color: Colors.green)]),
      BarChartGroupData(
          x: 9, barRods: [BarChartRodData(toY: 0, color: Colors.green)]),
      BarChartGroupData(
          x: 10, barRods: [BarChartRodData(toY: 0, color: Colors.green)]),
      BarChartGroupData(
          x: 11, barRods: [BarChartRodData(toY: 0, color: Colors.green)]),
    ];
  }
}

class Chart4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            'Statistiques de l\'année 2024',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text('Source : AFRICRED'),
          SizedBox(height: 20),
          Expanded(
            child: Stack(
              children: [
                BarChart(
                  BarChartData(
                    barGroups: _getBarGroups(),
                    titlesData: FlTitlesData(
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: false,
                          getTitlesWidget: (double value, TitleMeta meta) {
                            const style = TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            );

                            Widget text;
                            switch (value.toInt()) {
                              case 0:
                                text = Mytext(
                                  text: 'Jan',
                                  size: 11,
                                );
                                break;
                              case 1:
                                text = Mytext(
                                  text: 'Fév',
                                  size: 11,
                                );
                                break;
                              case 2:
                                text = Mytext(
                                  text: 'Mar',
                                  size: 11,
                                );
                                break;
                              case 3:
                                text = Mytext(
                                  text: 'Avr',
                                  size: 11,
                                );
                                break;
                              case 4:
                                text = Mytext(
                                  text: "Mai",
                                  size: 11,
                                );
                                break;
                              case 5:
                                text = Mytext(
                                  text: 'Jui',
                                  size: 11,
                                );
                                break;
                              case 6:
                                text = Mytext(
                                  text: 'Juil',
                                  size: 11,
                                );
                                break;
                              case 7:
                                text = Mytext(
                                  text: 'Aoû',
                                  size: 11,
                                );
                                break;
                              case 8:
                                text = Mytext(
                                  text: 'Sep',
                                  size: 11,
                                );
                                break;
                              case 9:
                                text = Mytext(
                                  text: 'Oct',
                                  size: 11,
                                );
                                break;
                              case 10:
                                text = Mytext(
                                  text: 'Nov',
                                  size: 11,
                                );
                                break;
                              case 11:
                                text = Mytext(
                                  text: 'Déc',
                                  size: 11,
                                );
                                break;
                              default:
                                text = Text('', style: style);
                                break;
                            }
                            return SideTitleWidget(
                              axisSide: meta.axisSide,
                              space: 8.0, // margin top
                              child: text,
                            );
                          },
                        ),
                      ),
                      rightTitles:
                          AxisTitles(sideTitles: SideTitles(showTitles: false)),
                      topTitles:
                          AxisTitles(sideTitles: SideTitles(showTitles: false)),
                      leftTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          getTitlesWidget: (double value, TitleMeta meta) {
                            const style = TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            );
                            return Text(
                              value % 10 == 0 ? value.toInt().toString() : '',
                              style: style,
                            );
                          },
                        ),
                      ),
                    ),
                    borderData: FlBorderData(show: false),
                    gridData: FlGridData(show: false),
                    maxY: 50, // define a common max Y value
                  ),
                ),
                LineChart(
                  LineChartData(
                    lineBarsData: [
                      LineChartBarData(
                        spots: [
                          FlSpot(0, 19),
                          FlSpot(1, 14),
                          FlSpot(2, 7),
                          FlSpot(3, 0),
                          FlSpot(4, 0),
                          FlSpot(5, 0),
                          FlSpot(6, 0),
                          FlSpot(7, 0),
                          FlSpot(8, 0),
                          FlSpot(9, 0),
                          FlSpot(10, 0),
                          FlSpot(11, 0),
                        ],
                        isCurved: true,
                        // colors: [Colors.blue],
                        barWidth: 2,
                        isStrokeCapRound: true,
                        dotData: FlDotData(show: true),
                      ),
                    ],
                    titlesData: FlTitlesData(
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          getTitlesWidget: (double value, TitleMeta meta) {
                            const style = TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            );
                            Widget text;
                            switch (value.toInt()) {
                              case 0:
                                text = _text('Jan');
                                break;
                              case 1:
                                text = Text('Fév', style: style);
                                break;
                              case 2:
                                text = Text('Mar', style: style);
                                break;
                              case 3:
                                text = Text('Avr', style: style);
                                break;
                              case 4:
                                text = Text('Mai', style: style);
                                break;
                              case 5:
                                text = Text('Jui', style: style);
                                break;
                              case 6:
                                text = Text('Juil', style: style);
                                break;
                              case 7:
                                text = Text('Aoû', style: style);
                                break;
                              case 8:
                                text = Text('Sep', style: style);
                                break;
                              case 9:
                                text = Text('Oct', style: style);
                                break;
                              case 10:
                                text = Text('Nov', style: style);
                                break;
                              case 11:
                                text = Text('Déc', style: style);
                                break;
                              default:
                                text = Text('', style: style);
                                break;
                            }
                            return SideTitleWidget(
                              axisSide: meta.axisSide,
                              space: 8.0, // margin top
                              child: text,
                            );
                          },
                        ),
                      ),
                      leftTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles:
                              false, // Hide the left titles for LineChart to avoid overlapping
                        ),
                      ),
                    ),
                    gridData: FlGridData(show: false),
                    borderData: FlBorderData(show: false),
                    maxY: 50, // define a common max Y value
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Mytext _text(String v) {
    return Mytext(
      text: v,
      size: 11,
    );
  }

  List<BarChartGroupData> _getBarGroups() {
    return [
      BarChartGroupData(
          x: 0, barRods: [BarChartRodData(toY: 40, color: Colors.green)]),
      BarChartGroupData(
          x: 1, barRods: [BarChartRodData(toY: 45, color: Colors.green)]),
      BarChartGroupData(
          x: 2, barRods: [BarChartRodData(toY: 20, color: Colors.green)]),
      BarChartGroupData(
          x: 3, barRods: [BarChartRodData(toY: 0, color: Colors.green)]),
      BarChartGroupData(
          x: 4, barRods: [BarChartRodData(toY: 0, color: Colors.green)]),
      BarChartGroupData(
          x: 5, barRods: [BarChartRodData(toY: 0, color: Colors.green)]),
      BarChartGroupData(
          x: 6, barRods: [BarChartRodData(toY: 0, color: Colors.green)]),
      BarChartGroupData(
          x: 7, barRods: [BarChartRodData(toY: 0, color: Colors.green)]),
      BarChartGroupData(
          x: 8, barRods: [BarChartRodData(toY: 0, color: Colors.green)]),
      BarChartGroupData(
          x: 9, barRods: [BarChartRodData(toY: 0, color: Colors.green)]),
      BarChartGroupData(
          x: 10, barRods: [BarChartRodData(toY: 0, color: Colors.green)]),
      BarChartGroupData(
          x: 11, barRods: [BarChartRodData(toY: 0, color: Colors.green)]),
    ];
  }
}

class Chart5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            'Statistiques de l\'année 2024',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text('Source : AFRICRED'),
          SizedBox(height: 20),
          Expanded(
            child: Stack(
              children: [
                BarChart(
                  BarChartData(
                    barGroups: _getBarGroups(),
                    titlesData: _buildTitlesData(),
                    borderData: FlBorderData(show: false),
                    gridData: FlGridData(show: false),
                    maxY: 50, // define a common max Y value
                  ),
                ),
                LineChart(
                  LineChartData(
                    lineBarsData: [
                      LineChartBarData(
                        spots: [
                          FlSpot(0, 19),
                          FlSpot(1, 14),
                          FlSpot(2, 7),
                          FlSpot(3, 0),
                          FlSpot(4, 0),
                          FlSpot(5, 0),
                          FlSpot(6, 0),
                          FlSpot(7, 0),
                          FlSpot(8, 0),
                          FlSpot(9, 0),
                          FlSpot(10, 0),
                          FlSpot(11, 0),
                        ],
                        isCurved: true,
                        // colors: [Colors.blue],
                        barWidth: 2,
                        isStrokeCapRound: true,
                        dotData: FlDotData(show: true),
                      ),
                    ],
                    titlesData: _buildTitlesData(showBottomTitles: false),
                    gridData: FlGridData(show: false),
                    borderData: FlBorderData(show: false),
                    maxY: 50, // define a common max Y value
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  FlTitlesData _buildTitlesData({bool showBottomTitles = true}) {
    return FlTitlesData(
      bottomTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: showBottomTitles,
          getTitlesWidget: (double value, TitleMeta meta) {
            const style = TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            );
            Widget text;
            switch (value.toInt()) {
              case 0:
                text = Text('Jan', style: style);
                break;
              case 1:
                text = Text('Fév', style: style);
                break;
              case 2:
                text = Text('Mar', style: style);
                break;
              case 3:
                text = Text('Avr', style: style);
                break;
              case 4:
                text = Text('Mai', style: style);
                break;
              case 5:
                text = Text('Jui', style: style);
                break;
              case 6:
                text = Text('Juil', style: style);
                break;
              case 7:
                text = Text('Aoû', style: style);
                break;
              case 8:
                text = Text('Sep', style: style);
                break;
              case 9:
                text = Text('Oct', style: style);
                break;
              case 10:
                text = Text('Nov', style: style);
                break;
              case 11:
                text = Text('Déc', style: style);
                break;
              default:
                text = Text('', style: style);
                break;
            }
            return SideTitleWidget(
              axisSide: meta.axisSide,
              space: 8.0, // margin top
              child: text,
            );
          },
        ),
      ),
      leftTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          getTitlesWidget: (double value, TitleMeta meta) {
            const style = TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            );
            return Text(
              value % 10 == 0 ? value.toInt().toString() : '',
              style: style,
            );
          },
        ),
      ),
    );
  }

  List<BarChartGroupData> _getBarGroups() {
    return [
      BarChartGroupData(
          x: 0, barRods: [BarChartRodData(toY: 40, color: Colors.green)]),
      BarChartGroupData(
          x: 1, barRods: [BarChartRodData(toY: 45, color: Colors.green)]),
      BarChartGroupData(
          x: 2, barRods: [BarChartRodData(toY: 20, color: Colors.green)]),
      BarChartGroupData(
          x: 3, barRods: [BarChartRodData(toY: 0, color: Colors.green)]),
      BarChartGroupData(
          x: 4, barRods: [BarChartRodData(toY: 0, color: Colors.green)]),
      BarChartGroupData(
          x: 5, barRods: [BarChartRodData(toY: 0, color: Colors.green)]),
      BarChartGroupData(
          x: 6, barRods: [BarChartRodData(toY: 0, color: Colors.green)]),
      BarChartGroupData(
          x: 7, barRods: [BarChartRodData(toY: 0, color: Colors.green)]),
      BarChartGroupData(
          x: 8, barRods: [BarChartRodData(toY: 0, color: Colors.green)]),
      BarChartGroupData(
          x: 9, barRods: [BarChartRodData(toY: 0, color: Colors.green)]),
      BarChartGroupData(
          x: 10, barRods: [BarChartRodData(toY: 0, color: Colors.green)]),
      BarChartGroupData(
          x: 11, barRods: [BarChartRodData(toY: 0, color: Colors.green)]),
    ];
  }
}
