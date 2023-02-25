import 'package:dcharts/Charts/Bar_CustomChart.dart';
import 'package:dcharts/Charts/Bar_chart.dart';
import 'package:dcharts/Charts/Donut_Chart.dart';
import 'package:dcharts/Charts/Gauge_Chart.dart';
import 'package:dcharts/Charts/Pie%20Chart.dart';
import 'package:dcharts/Charts/Time_Chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Charts/Line_Chart.dart';
import 'Charts/Scatter_Chart.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double textSize = 17.0;
  double boxHeight = 120;
  double boxWidth = 140;
  double imageHight = 100;
  double imageWidth = 110;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple[800],
          elevation: 5.0,
          title: Center(
              child: Text(
            'D Charts ',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
          )),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Padding(
                padding: EdgeInsets.only(left: 30, right: 30, top: 10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return BarChartScreen();
                          }));
                        },
                        child: Card(
                          // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                          elevation: 10,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 15, top: 15),
                            child: Container(
                              height: boxHeight,
                              width: boxWidth,
                              child: Column(
                                children: [
                                  Image(
                                      width: imageWidth,
                                      height: imageHight,
                                      image: NetworkImage('https://datavizproject.com/wp-content/uploads/types/Bar-Chart-Vertical.png')),
                                  // SizedBox(
                                  //   height: 15,
                                  // ),
                                  Text(
                                    'Bar Chart',
                                    style: TextStyle(
                                        fontSize: textSize,
                                        color: Colors.purple[600],fontWeight: FontWeight.bold,),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return LineChartScreen();
                          }));
                        },
                        child: Card(
                          // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                          elevation: 10,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 15, top: 15),
                            child: Container(
                              height: boxHeight,
                              width: boxWidth,
                              child: Column(
                                children: [
                                  Image(
                                      width: imageWidth,
                                      height: imageHight,
                                      image: NetworkImage('https://datavizproject.com/wp-content/uploads/types/Line-Graph.png')),
                                  Text(
                                    'Line Chart',
                                    style: TextStyle(
                                        fontSize: textSize,
                                        color: Colors.purple[600],fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30, top: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return PieChartScreen();
                        }));
                      },
                      child: Card(
                        // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                        elevation: 10,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 15, top: 15),
                          child: Container(
                            height: boxHeight,
                            width: boxWidth,
                            child: Column(
                              children: [
                                Image(
                                    width: imageWidth,
                                    height: imageHight,
                                    image: NetworkImage('https://www.tableau.com/sites/default/files/2021-06/DataGlossary_Icons_Pie%20Chart.jpg')),
                                // SizedBox(
                                //   height: 15,
                                // ),
                                Text(
                                  'Pie Chart',
                                  style: TextStyle(
                                    fontSize: textSize,
                                    color: Colors.purple[600],fontWeight: FontWeight.bold,),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return DonutChartScreen();
                        }));
                      },
                      child: Card(
                        // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                        elevation: 10,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 15, top: 15),
                          child: Container(
                            height: boxHeight,
                            width: boxWidth,
                            child: Column(
                              children: [
                                Image(
                                    width: imageWidth,
                                    height: imageHight,
                                    image: NetworkImage('https://datavizproject.com/wp-content/uploads/types/Donut-Chart.png')),
                                Text(
                                  'Donut Chart',
                                  style: TextStyle(
                                      fontSize: textSize,
                                      color: Colors.purple[600],fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30, top: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return GaugeChartScreen();
                        }));
                      },
                      child: Card(
                        // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                        elevation: 10,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 15, top: 15),
                          child: Container(
                            height: boxHeight,
                            width: boxWidth,
                            child: Column(
                              children: [
                                Image(
                                    width: imageWidth,
                                    height: imageHight,
                                    image: NetworkImage('https://www.dearwatson.net.au/wp-content/uploads/2021/06/img-blog-image-gauge-visual-colors.jpg')),
                                // SizedBox(
                                //   height: 15,
                                // ),
                                Text(
                                  'Gauge Chart',
                                  style: TextStyle(
                                    fontSize: textSize,
                                    color: Colors.purple[600],fontWeight: FontWeight.bold,),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return BarCustomScreen();
                        }));
                      },
                      child: Card(
                        // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                        elevation: 10,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 15, top: 15),
                          child: Container(
                            height: boxHeight,
                            width: boxWidth,
                            child: Column(
                              children: [
                                Image(
                                    width: imageWidth,
                                    height: imageHight,
                                    image: NetworkImage('https://i.stack.imgur.com/cHvQI.png')),
                                Text(
                                  'Bar Custom',
                                  style: TextStyle(
                                      fontSize: textSize,
                                      color: Colors.purple[600],fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30, top: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return TimeChartScreen();
                        }));
                      },
                      child: Card(
                        // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                        elevation: 10,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 15, top: 15),
                          child: Container(
                            height: boxHeight,
                            width: boxWidth,
                            child: Column(
                              children: [
                                Image(
                                    width: imageWidth,
                                    height: imageHight,
                                    image: NetworkImage('https://images.template.net/wp-content/uploads/2017/05/fimg-time.jpg')),
                                // SizedBox(
                                //   height: 15,
                                // ),
                                Text(
                                  'Time Chart',
                                  style: TextStyle(
                                    fontSize: textSize,
                                    color: Colors.purple[600],fontWeight: FontWeight.bold,),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ScatterChartScreen();
                        }));
                      },
                      child: Card(
                        // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                        elevation: 10,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 15, top: 15),
                          child: Container(
                            height: boxHeight,
                            width: boxWidth,
                            child: Column(
                              children: [
                                Image(
                                    width: imageWidth,
                                    height: imageHight,
                                    image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/a/af/Scatter_diagram_for_quality_characteristic_XXX.svg/640px-Scatter_diagram_for_quality_characteristic_XXX.svg.png')),
                                Text(
                                  'Scatter Chart',
                                  style: TextStyle(
                                      fontSize: textSize,
                                      color: Colors.purple[600],fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30, top: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      // onTap: () {
                      //   Navigator.push(context,
                      //       MaterialPageRoute(builder: (context) {
                      //     return BankPage();
                      //   }));
                      // },
                      child: Card(
                        // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                        elevation: 10,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 15, top: 15),
                          child: Container(
                            height: boxHeight,
                            width: boxWidth,
                            child: Column(
                              children: [
                                Image(
                                    width: imageWidth,
                                    height: imageHight,
                                    image: NetworkImage('https://community.powerbi.com/t5/image/serverpage/image-id/512660i162529C460DA2871?v=v2')),
                                // SizedBox(
                                //   height: 15,
                                // ),
                                Text(
                                  'Single Bar',
                                  style: TextStyle(
                                    fontSize: textSize,
                                    color: Colors.purple[600],fontWeight: FontWeight.bold,),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
            ),
          ]),
        ));
  }
}
