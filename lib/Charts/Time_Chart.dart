import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimeChartScreen extends StatefulWidget {
  const TimeChartScreen({Key? key}) : super(key: key);

  @override
  State<TimeChartScreen> createState() => _TimeChartScreenState();
}

class _TimeChartScreenState extends State<TimeChartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[800],
        title: Text('Time Custom Chart'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(16),
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: DChartTime(
                  chartRender: DRenderLine(),
                  measureLabel: (value) => '${value}k',
                  domainLabel: (dateTime) {
                    // [DateFormat] from intl package
                    return DateFormat('d MMM yy').format(dateTime!);
                  },
                  groupData: [
                    DChartTimeGroup(
                      id: 'Keyboard',
                      color: Colors.blue,
                      data: [
                        DChartTimeData(time: DateTime(2023, 2, 1), value: 29),
                        DChartTimeData(time: DateTime(2023, 2, 2), value: 73),
                        DChartTimeData(time: DateTime(2023, 2, 4), value: 23),
                        DChartTimeData(time: DateTime(2023, 2, 8), value: 56),
                        DChartTimeData(time: DateTime(2023, 2, 9), value: 32),
                        DChartTimeData(time: DateTime(2023, 2, 10), value: 21),
                        DChartTimeData(time: DateTime(2023, 2, 12), value: 76),
                        DChartTimeData(time: DateTime(2023, 2, 18), value: 91),
                        DChartTimeData(time: DateTime(2023, 2, 20), value: 17),
                      ],
                    ),
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
