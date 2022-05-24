/// Line chart example
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class PointsLineChart extends StatelessWidget {
  
 final List<charts.Series<dynamic, num>>seriesList;
   bool animate;

  PointsLineChart(this.seriesList, {this.animate=true});

  factory PointsLineChart.withSampleData() {
    return  PointsLineChart(_createSampleData(), animate:true,);
  }


  @override
  Widget build(BuildContext context) {
    return  charts.LineChart( seriesList,
        animate: animate,
        defaultRenderer:  charts.LineRendererConfig(includePoints: true));
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<LinearSales, num>> _createSampleData() {
    final data = [
       LinearSales(0, 5),
       LinearSales(1, 25),
       LinearSales(2, 100),
       LinearSales(3, 75),
       LinearSales(4, 75),
       LinearSales(5, 75),
    ];
 print(data);
    return [
       charts.Series<LinearSales, int>(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (LinearSales series, _) =>  series.year,
        measureFn: (LinearSales series, _) => series.amount,
        data: data,
      )
     
    ];
    
  }
}

/// Sample linear data type.
class LinearSales {
  final int year;
  final int amount;

  LinearSales(this.year, this.amount);
}