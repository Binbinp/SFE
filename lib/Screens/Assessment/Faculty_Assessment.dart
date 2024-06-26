import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class FacultyAssessmentScreen extends StatelessWidget {
  const FacultyAssessmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Faculty Assessment',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Center(
              child: Text(
                'This is the Faculty Assessment Screen',
                style: TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: screenHeight / 2,
              child: BarChart(
                BarChartData(
                  alignment: BarChartAlignment.spaceAround,
                  maxY: 1000,
                  barTouchData: BarTouchData(enabled: false),
                  titlesData: FlTitlesData(
                    leftTitles: SideTitles(showTitles: true, interval: 200),
                    bottomTitles: SideTitles(
                      showTitles: true,
                      getTitles: (double value) {
                        switch (value.toInt()) {
                          case 0:
                            return '1';
                          case 1:
                            return '2';
                          case 2:
                            return '3';
                          case 3:
                            return '4';
                          case 4:
                            return '5';
                          default:
                            return '';
                        }
                      },
                    ),
                  ),
                  borderData: FlBorderData(show: false),
                  barGroups: [
                    BarChartGroupData(
                      x: 0,
                      barRods: [BarChartRodData(y: 589, colors: [Colors.green])],
                    ),
                    BarChartGroupData(
                      x: 1,
                      barRods: [BarChartRodData(y: 639, colors: [Colors.yellow])],
                    ),
                    BarChartGroupData(
                      x: 2,
                      barRods: [BarChartRodData(y: 300, colors: [Colors.orange])],
                    ),
                    BarChartGroupData(
                      x: 3,
                      barRods: [BarChartRodData(y: 438, colors: [Colors.red])],
                    ),
                    BarChartGroupData(
                      x: 4,
                      barRods: [BarChartRodData(y: 328, colors: [Colors.redAccent])],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Ratings: 2.6/5', style: TextStyle(fontSize: 16)),
                Text('Best: 112', style: TextStyle(fontSize: 16, color: Colors.green)),
                Text('Worst: 205', style: TextStyle(fontSize: 16, color: Colors.red)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}



