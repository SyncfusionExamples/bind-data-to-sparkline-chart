import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

void main() {
  return runApp(_ChartApp());
}

class _ChartApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    List<_SalesData> sparkChartData = [
      _SalesData('Jan', 35),
      _SalesData('Feb', 28),
      _SalesData('Mar', 34),
      _SalesData('Apr', 32),
      _SalesData('May', 40)
    ];

    //For default data type to bind using data property
    // List<double> sparkChartData = <double>[
    //   10,
    //   6,
    //   8,
    //   -5,
    //   11,
    //   5,
    //   -2,
    //   7,
    //   -3,
    //   6,
    //   8,
    //   10
    // ];

    return Scaffold(
        body: Center(
            child: Padding(
      padding: EdgeInsets.all(20),
      child: Container(
        color: Colors.white,
        height: 500,
        width: 320,
        //Initialize the spark line chart
        // child: SfSparkLineChart(data: sparkChartData)
        child: SfSparkLineChart.custom(
          // Binding the xValueMapper with our user defined data type.
          xValueMapper: (int index) => sparkChartData[index].year,
          // Binding the yValueMapper with our user defined data type.
          yValueMapper: (int index) => sparkChartData[index].sales,
          // Assigning the number of data counts.
          dataCount: 5,
        ),
        // To bind data using the data property
        // child: SfSparkLineChart(data: sparkChartData),
      ),
    )));
  }
}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
