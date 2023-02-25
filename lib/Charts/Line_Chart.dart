import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';

class LineChartScreen extends StatefulWidget {
  const LineChartScreen({Key? key}) : super(key: key);

  @override
  State<LineChartScreen> createState() => _LineChartScreenState();
}

class _LineChartScreenState extends State<LineChartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[800],
        title: Text('Line Chart'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(16),
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child:DChartLine(
                  data: [
                    {
                      'id': 'Line',
                      'data': [
                        {'domain': 0, 'measure': 1},
                        {'domain': 2, 'measure': 2},
                        {'domain': 3, 'measure': 4},
                        {'domain': 4, 'measure': 1},
                      ],
                    },
                  ],
                  lineColor: (lineData, index, id) => Colors.purple,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
