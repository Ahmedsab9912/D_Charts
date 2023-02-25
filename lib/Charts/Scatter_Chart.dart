import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';

class ScatterChartScreen extends StatefulWidget {
  const ScatterChartScreen({Key? key}) : super(key: key);

  @override
  State<ScatterChartScreen> createState() => _ScatterChartScreenState();
}

class _ScatterChartScreenState extends State<ScatterChartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[800],
        title: Text('Bar Chart'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(16),
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child:DChartBar(
                  data: [
                    {
                      'id': 'Bar',
                      'data': [
                        {'domain': '2020', 'measure': 3},
                        {'domain': '2021', 'measure': 4},
                        {'domain': '2022', 'measure': 6},
                        {'domain': '2023', 'measure': 5},
                      ],
                    },
                  ],
                  domainLabelPaddingToAxisLine: 11,
                  axisLineTick: 2,
                  axisLinePointTick: 2,
                  axisLinePointWidth: 6,
                  axisLineColor: Colors.purple,
                  measureLabelPaddingToAxisLine: 7,
                  barColor: (barData, index, id) => Colors.purple,
                  showBarValue: true,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
