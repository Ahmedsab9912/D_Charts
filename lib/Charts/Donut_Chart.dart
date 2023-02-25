import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';

class DonutChartScreen extends StatefulWidget {
  const DonutChartScreen({Key? key}) : super(key: key);

  @override
  State<DonutChartScreen> createState() => _DonutChartScreenState();
}

class _DonutChartScreenState extends State<DonutChartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[800],
        title: Text('Donut Chart'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(16),
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child:DChartPie(
                  data: [
                    {'domain': 'Flutter', 'measure': 28},
                    {'domain': 'React Native', 'measure': 27},
                    {'domain': 'Ionic', 'measure': 20},
                    {'domain': 'Cordova', 'measure': 15},
                  ],
                  fillColor: (pieData, index) => Colors.purple,
                  donutWidth: 30,
                  labelColor: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
