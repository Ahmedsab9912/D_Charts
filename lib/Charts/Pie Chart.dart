import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';

class PieChartScreen extends StatefulWidget {
  const PieChartScreen({Key? key}) : super(key: key);

  @override
  State<PieChartScreen> createState() => _PieChartScreenState();
}

class _PieChartScreenState extends State<PieChartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[800],
        title: Text('Pie Chart'),
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
                  labelColor: Colors.white,
                  labelFontSize: 19,
                ),
              ),
            ),
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
                  fillColor: (pieData, index) => Colors.red,
                  labelColor: Colors.white,
                  labelFontSize: 19,
                  donutWidth: 50,
                ),
              ),
            ),
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
                  fillColor: (pieData, index) => Colors.green,
                  labelColor: Colors.black,
                  labelFontSize: 19,
                  donutWidth: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
