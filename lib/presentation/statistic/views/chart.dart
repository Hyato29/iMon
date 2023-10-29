import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ChartView extends GetView {
  const ChartView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 263,
      width: double.infinity,
      child: _LineChart(),
    );
  }
}

class _LineChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LineChart(
        swapAnimationDuration: Duration(milliseconds: 250), sampleData1);
  }
}

LineChartData get sampleData1 => LineChartData(
    gridData: gridData,
    titlesData: titlesData,
    borderData: borderData,
    lineBarsData: lineBarsData,
    minX: 1,
    maxX: 7,
    minY: 0,
    maxY: 6);

List<LineChartBarData> get lineBarsData =>
    [lineChartBarData1, lineChartBarData2];

FlTitlesData get titlesData => FlTitlesData(
    bottomTitles: AxisTitles(sideTitles: bottomTitles),
    rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
    topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
    leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)));

// Widget leftTitlesWidget(double value, TitleMeta meta) {
//   const style =
//       TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.green);
//   String text;
//   switch (value.toInt()) {
//     case 1:
//       text = '1m';
//       break;
//     case 2:
//       text = '2m';
//       break;
//     case 3:
//       text = '3m';
//       break;
//     case 4:
//       text = '4m';
//       break;
//     case 5:
//       text = '5m';
//       break;
//     default:
//       return Container();
//   }
//   return Text(
//     text,
//     style: style,
//     textAlign: TextAlign.center,
//   );
// }

// SideTitles leftTitles() => SideTitles(
//     getTitlesWidget: leftTitlesWidget,
//     showTitles: false,
//     interval: 1,
//     reservedSize: 30);

Widget bottomTitlesWidget(double value, TitleMeta meta) {
  const style =
      TextStyle(fontSize: 10, color: Colors.black, fontFamily: "Poppins");
  Widget text;
  switch (value.toInt()) {
    case 1:
      text = const Text(
        "10",
        style: style,
      );
      break;
    case 2:
      text = const Text(
        "11",
        style: style,
      );
      break;
    case 3:
      text = const Text(
        "12",
        style: style,
      );
      break;
    case 4:
      text = const Text(
        "13",
        style: style,
      );
      break;
    case 5:
      text = const Text(
        "14",
        style: style,
      );
      break;
    case 6:
      text = const Text(
        "15",
        style: style,
      );
      break;
    case 7:
      text = const Text(
        "16",
        style: style,
      );
      break;
    default:
      text = const Text('');
      break;
  }
  return SideTitleWidget(
    axisSide: meta.axisSide,
    space: 10,
    child: text,
  );
}

SideTitles get bottomTitles => SideTitles(
    showTitles: true,
    reservedSize: 30,
    interval: 1,
    getTitlesWidget: bottomTitlesWidget);

FlGridData get gridData => FlGridData(
    show: true,
    drawHorizontalLine: false,
    drawVerticalLine: true,
    verticalInterval: 1);

FlBorderData get borderData => FlBorderData(
      show: true,
      border: const Border(
        bottom: BorderSide(color: Colors.black),
        left: BorderSide(color: Colors.transparent),
        right: BorderSide(color: Colors.transparent),
        top: BorderSide(color: Colors.transparent),
      ),
    );

LineChartBarData get lineChartBarData1 => LineChartBarData(
        isCurved: true,
        color: Color.fromARGB(255, 0, 253, 34),
        barWidth: 4,
        // isStrokeCapRound: true,
        dotData: FlDotData(show: true),
        belowBarData: BarAreaData(show: false),
        spots: const [
          FlSpot(1, 2),
          FlSpot(2, 3),
          FlSpot(3, 3),
          FlSpot(4, 2.5),
          FlSpot(5, 4),
          FlSpot(6, 5),
          FlSpot(7, 5)
        ]);

LineChartBarData get lineChartBarData2 => LineChartBarData(
        isCurved: true,
        color: Color(0xFFFF5984),
        barWidth: 4,
        // isStrokeCapRound: true,
        dotData: FlDotData(
          show: true,
        ),
        belowBarData: BarAreaData(show: false),
        spots: const [
          FlSpot(1, 4),
          FlSpot(2, 3.5),
          FlSpot(3, 3.5),
          FlSpot(4, 3),
          FlSpot(5, 2),
          FlSpot(6, 1),
          FlSpot(7, 1)
        ]);
