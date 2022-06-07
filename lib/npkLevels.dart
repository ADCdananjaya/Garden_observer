import 'package:flutter/material.dart';
import 'dart:math';
import 'package:fl_chart/fl_chart.dart';

/*
class NPK extends StatelessWidget {
  const NPK({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NPK levels'),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text('NPK levels'),
            ),
          ],
        ),
      ),
    );
  }
}
*/
class NPK extends StatefulWidget {
  const NPK({Key? key}) : super(key: key);
  _NPKState createState() => _NPKState();
}

class _NPKState extends State<NPK> {
  final List<FlSpot> dummyData1 = List.generate(7, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble());
  });

  // This will be used to draw the orange line
  final List<FlSpot> dummyData2 = List.generate(7, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble());
  });

  // This will be used to draw the blue line
  final List<FlSpot> dummyData3 = List.generate(7, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble());
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NPK levels'),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(10),
          width: double.infinity,
          child: LineChart(
            LineChartData(
              borderData: FlBorderData(show: false),
              lineBarsData: [
                // The red line
                LineChartBarData(
                  spots: dummyData1,
                  isCurved: false,
                  barWidth: 3,
                  /*colors: [
                    Colors.red,
                  ],*/
                ),
                // The orange line
                LineChartBarData(
                  spots: dummyData2,
                  isCurved: false,
                  barWidth: 3,
                  /*colors: [
                    Colors.orange,
                  ],*/
                ),
                // The blue line
                LineChartBarData(
                  spots: dummyData3,
                  isCurved: false,
                  barWidth: 3,
                  color: Colors.red,
                  /*colors: [
                    Colors.blue,
                  ],*/
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
