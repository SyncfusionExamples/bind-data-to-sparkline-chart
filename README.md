# How to bind data to the Sparkline chart (SfSparkLineChart)?

There are two different ways to bind the data source to the SfSparklineChart widget. One is directly binding the data, for example list of y values to the data property of SfSparkLineChart widget, and another one is binding the custom data source using SfSparkLineChart.custom.

* Using the data property - Initialize the data source sparkChartData of required type, declared the type as double.
* Binding Custom data source - Here, you can define our custom type data source. By using the dataCount property, you can assign the number of data and then you can map x and y value of our data source using the xValueMapper and yValueMapper, respectively.

Documentation: https://help.syncfusion.com/flutter/sparkcharts/axis-types 


## Requirements to run the demo
* [VS Code](https://code.visualstudio.com/download)
* [Flutter SDK v2.0.0+](https://flutter.dev/docs/development/tools/sdk/overview)
* [For more development tools](https://flutter.dev/docs/development/tools/devtools/overview)

## How to run this application
To run this application, you need to first clone or download the ‘bind data to sparkline chart’ repository and open it in your preferred IDE. Then, build and run your project to view the output.

## Further help
For more help, check the [Syncfusion Flutter documentation](https://help.syncfusion.com/flutter/introduction/overview), or
 [Flutter documentation](https://flutter.dev/docs/get-started/install).
