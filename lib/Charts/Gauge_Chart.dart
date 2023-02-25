import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';

class GaugeChartScreen extends StatefulWidget {
  const GaugeChartScreen({Key? key}) : super(key: key);

  @override
  State<GaugeChartScreen> createState() => _GaugeChartScreenState();
}

class _GaugeChartScreenState extends State<GaugeChartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[800],
        title: Text('Gauge Chart'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(16),
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child:DChartGauge(
                  data: [
                    {'domain': 'Off', 'measure': 30},
                    {'domain': 'Warm', 'measure': 30},
                    {'domain': 'Hot', 'measure': 30},
                  ],
                  fillColor: (pieData, index) {
                    switch (pieData['domain']) {
                      case 'Off':
                        return Colors.green;
                      case 'Warm':
                        return Colors.orange;
                      default:
                        return Colors.red;
                    }
                  },
                  showLabelLine: false,
                  pieLabel: (pieData, index) {
                    return "${pieData['domain']}";
                  },
                  labelPosition: PieLabelPosition.inside,
                  labelPadding: 0,
                  labelColor: Colors.white,
                  labelFontSize: 11,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child:DChartGauge(
                  data: [
                    {'domain': 'Off', 'measure': 30},
                    {'domain': 'Warm', 'measure': 30},
                    {'domain': 'Hot', 'measure': 30},
                  ],
                  fillColor: (pieData, index) {
                    switch (pieData['domain']) {
                      case 'Off':
                        return Colors.green;
                      case 'Warm':
                        return Colors.orange;
                      default:
                        return Colors.red;
                    }
                  },
                  showLabelLine: false,
                  pieLabel: (pieData, index) {
                    return "${pieData['domain']}";
                  },
                  labelPosition: PieLabelPosition.inside,
                  labelPadding: 0,
                  labelColor: Colors.white,
                  labelFontSize: 11,
                  donutWidth: 70,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child:DChartGauge(
                  data: [
                    {'domain': 'Off', 'measure': 30},
                    {'domain': 'Warm', 'measure': 30},
                    {'domain': 'Hot', 'measure': 30},
                  ],
                  fillColor: (pieData, index) {
                    switch (pieData['domain']) {
                      case 'Off':
                        return Colors.green;
                      case 'Warm':
                        return Colors.orange;
                      default:
                        return Colors.red;
                    }
                  },
                  showLabelLine: false,
                  pieLabel: (pieData, index) {
                    return "${pieData['domain']}";
                  },
                  labelPosition: PieLabelPosition.inside,
                  labelPadding: 0,
                  labelColor: Colors.white,
                  labelFontSize: 11,
                  donutWidth: 90,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
