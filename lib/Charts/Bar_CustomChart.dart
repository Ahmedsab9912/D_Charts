import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';

class BarCustomScreen extends StatefulWidget {
  const BarCustomScreen({Key? key}) : super(key: key);

  @override
  State<BarCustomScreen> createState() => _BarCustomScreenState();
}

class _BarCustomScreenState extends State<BarCustomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[800],
        title: Text('Bar Custom'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(16),
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: DChartBarCustom(
                  showDomainLine: true,
                  showMeasureLine: true,
                  showDomainLabel: true,
                  showMeasureLabel: true,
                  spaceBetweenItem: 8,
                  listData: [
                    DChartBarDataCustom(
                      value: 13,
                      label: 'Jan',
                      color: Colors.blue,
                    ),
                    DChartBarDataCustom(value: 20, label: 'Feb'),
                    DChartBarDataCustom(value: 30, label: 'Mar'),
                    DChartBarDataCustom(value: 40, label: 'Apr'),
                    DChartBarDataCustom(value: 25, label: 'Mei'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
